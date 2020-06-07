import io
import os
from django.http import HttpResponseRedirect, HttpResponse
from django.shortcuts import render
from .forms import LoginForm, RegisterForm, UploadFileForm
from .models import UserCustom,UploadFileAnnotations, LogoAnnotations, LabelAnnotations, FaceAnnotations, ImagePropertiesAnnotation, FullTextAnnotation, LandmarkAnnotations, LocationAnnotations, LocalizedObjectAnnotations, SafeSearchAnnotation, TextAnnotations, LanguageAnnotations
from django.urls import reverse
from django.contrib.auth.models import User,auth
from django.contrib.sites.shortcuts import get_current_site
from django.utils.encoding import force_bytes, force_text
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.template.loader import render_to_string
from .Controllers.TokenGenerator import account_activation_token
from django.core.mail import EmailMessage
from django.utils import timezone
from google.cloud import vision
from google.cloud.vision import types
from django.shortcuts import get_object_or_404, redirect, render
from django.contrib.sessions.models import Session

os.environ["GOOGLE_APPLICATION_CREDENTIALS"] = r'pristockmarket.json'

def home(request):
    context = {}
    if request.method == "POST":
        return render(request, 'BrandAnalysisApp/index.html', context)
    else:
        return render(request, 'BrandAnalysisApp/index.html', context)

def login(request):
    context = {}

    if request.session.get('userid'):
        userttype = request.session.get('usertype')
        if userttype:
            if userttype.lower() == "admin":
                return redirect("adminHome")
            else:
                return redirect("uploadImage")


    if request.method == "POST":
        username = request.POST['uemail']
        password = request.POST['upassword']
        try:
            user = UserCustom.objects.get(uemail=username)
            if user.uemail == username and user.upassword == password:
                user.updatedon = timezone.now()
                user.save()
                if user.uactivated:
                    request.session['userid'] = user.id
                    request.session['useremail'] = user.uemail
                    request.session['usertype'] = user.utype
                    if user.utype.lower() == "admin":
                        return redirect("adminHome")
                    else:
                        return redirect("uploadImage")
                else:
                    context["error"] = "User is not Activated"
                    return render(request, 'BrandAnalysisApp/SignIn.html', context)
            else:
                context["error"] = "User is not authenticated"
                return render(request, 'BrandAnalysisApp/SignIn.html', context)
        except:
            context["error"] = "User is not register with this email id"
            return render(request, 'BrandAnalysisApp/SignIn.html', context)
    else:
        userform = LoginForm()
        context["form"] = userform
        return render(request,'BrandAnalysisApp/SignIn.html',context)

def register(request):
    context = {}
    if request.method == "POST":
        registerform = RegisterForm(request.POST)
        if registerform.is_valid():
            username = request.POST['uemail']
            try:
                user = UserCustom.objects.get(uemail=username)
                context["error"] = "Email already register."
                return render(request, 'BrandAnalysisApp/Register.html', context)
            except:
                user = registerform.save(commit=False)
                user.uactivated = False
                registerform.save()
                current_site = get_current_site(request)
                mail_subject = 'verify your email id.'
                message = render_to_string('BrandAnalysisApp/acc_active_email.html', {
                    'user': user,
                    'domain': current_site.domain,
                    'uid': urlsafe_base64_encode(force_bytes(user.uemail)),
                    'token': account_activation_token.make_token(user),
                })
                to_email = registerform.cleaned_data.get('uemail')
                email = EmailMessage(
                    mail_subject, message, to=[to_email]
                )
                email.send()
                context["error"] = 'Please confirm your email address to complete the registration'
                return render(request, 'BrandAnalysisApp/Register.html', context)
        else:
            context["error"] = "Email already register."
            return render(request,'BrandAnalysisApp/Register.html',context)
    else:
        userform = RegisterForm()
        context["form"] = userform
        return render(request,'BrandAnalysisApp/Register.html',context)

def uploadImage(request):
    context = {}
    if request.method == "POST":
        userid = request.session.get("userid")
        user = UserCustom.objects.get(id=userid)
        imageForms = UploadFileForm(request.POST, request.FILES)
        if imageForms.is_valid():
            files = imageForms.files.getlist('file')
            for i in range(len(files)):
                file = files[i]
                handle_uploaded_file(file, file.name, user)
            context["error"] = "Image uploaded successfully"
        else:
            context["error"] = "File not uploaded try again later"
        return render(request, 'BrandAnalysisApp/UploadImage.html',context)
    else:
        return render(request, 'BrandAnalysisApp/UploadImage.html',context)

def handle_uploaded_file(f,name,user):
    filename_w_ext = os.path.basename(name)
    path = '/Users/vishal/Documents/Projects/PRI/BrandAnalysis/BrandAnalysisApp/Media/' + filename_w_ext
    with open(path, 'wb+') as destination:
        for chunk in f.chunks():
            destination.write(chunk)
    uploadfile = UploadFileAnnotations()
    uploadfile.file = filename_w_ext
    uploadfile.userid = user
    uploadfile.save()
    callgoogleVisionAPi(path, user, uploadfile)

def callgoogleVisionAPi(obj,user, imageid):
    likelihood_name = ('UNKNOWN', 'VERY_UNLIKELY', 'UNLIKELY', 'POSSIBLE',
                       'LIKELY', 'VERY_LIKELY')

    client = vision.ImageAnnotatorClient()
    # The name of the image file to annotate
    file_name = os.path.abspath(obj)
    # Loads the image into memory
    with io.open(file_name, 'rb') as image_file:
        content = image_file.read()
    image = types.Image(content=content)

# Performs label detection on the image file
    response = client.label_detection(image=image)
    labels = response.label_annotations
    for label in labels:
        labelobj = LabelAnnotations()
        labelobj.description = label.description
        labelobj.imageid = imageid
        labelobj.userid = user
        labelobj.save()

# Performs logo detection on the image file
    response = client.logo_detection(image=image)
    logos = response.logo_annotations
    for logo in logos:
        logoobj = LogoAnnotations()
        logoobj.description = logo.description
        logoobj.userid = user
        logoobj.imageid = imageid
        logoobj.save()

# Performs face detection on the image file
    response = client.face_detection(image=image)
    faces = response.face_annotations
    for face in faces:
        faceobj = FaceAnnotations()
        faceobj.userid = user
        faceobj.imageid = imageid
        faceobj.anger = likelihood_name[face.anger_likelihood]
        faceobj.blurred = likelihood_name[face.blurred_likelihood]
        faceobj.headwear = likelihood_name[face.headwear_likelihood]
        faceobj.joy = likelihood_name[face.joy_likelihood]
        faceobj.sorrow = likelihood_name[face.sorrow_likelihood]
        faceobj.surprise = likelihood_name[face.surprise_likelihood]
        faceobj.underExposed = likelihood_name[face.under_exposed_likelihood]
        faceobj.save()

# Performs color detection on the image file
    response = client.image_properties(image=image)
    properties = response.image_properties_annotation
    for color in properties.dominant_colors.colors:
        imageproperty = ImagePropertiesAnnotation()
        imageproperty.red = color.color.red
        imageproperty.blue = color.color.blue
        imageproperty.green = color.color.green
        imageproperty.alpha = color.color.alpha
        imageproperty.pixelFraction = color.pixel_fraction
        imageproperty.imageid = imageid
        imageproperty.userid = user
        imageproperty.save()

# Performs text detection on the image file
    response = client.text_detection(image=image)
    texts = response.text_annotations
    for text in texts:
        fulltext = TextAnnotations()
        fulltext.description = text.description
        fulltext.locale = text.locale
        fulltext.userid = user
        fulltext.imageid = imageid
        fulltext.save()

# Performs Landmark detection on the image file
    response = client.landmark_detection(image=image)
    landmarks = response.landmark_annotations
    for landmark in landmarks:
        landmarkobj = LandmarkAnnotations()
        landmarkobj.description = text.description
        landmarkobj.locale = text.locale
        landmarkobj.userid = user
        landmarkobj.imageid = imageid
        landmarkobj.save()

        # Performs location detection on the image file
        for location in landmark.locations:
            locationobj = LocationAnnotations()
            lat_lng = location.lat_lng
            locationobj.latitude = lat_lng.latitude
            locationobj.longitude = lat_lng.longitude
            locationobj.userid = user
            locationobj.imageid = imageid
            locationobj.landmarkid = landmarkobj
            locationobj.save()

# Performs localized detection on the image file
    response = client.object_localization(image=image)
    objects = response.localized_object_annotations
    for objectobj in objects:
        localizedobject = LocalizedObjectAnnotations()
        localizedobject.name = objectobj.name
        localizedobject.userid = user
        localizedobject.imageid = imageid
        localizedobject.save()


# Performs localized detection on the image file
    response = client.safe_search_detection(image=image)
    objects = response.safe_search_annotation
    safesearch = SafeSearchAnnotation()
    safesearch.adult = likelihood_name[objects.adult]
    safesearch.medical = likelihood_name[objects.medical]
    safesearch.racy = likelihood_name[objects.racy]
    safesearch.spoof = likelihood_name[objects.spoof]
    safesearch.violence = likelihood_name[objects.violence]
    safesearch.imageid = imageid
    safesearch.userid = user
    safesearch.save()

# Performs localized detection on the image file
    response = client.document_text_detection(image=image)
    document = response.full_text_annotation

    textobject = FullTextAnnotation()
    textobject.text = document.text
    textobject.userid = user
    textobject.imageid = imageid
    textobject.save()

    for page in document.pages:
        for language in page.property.detected_languages:
            code = language.language_code
            languageobj = LanguageAnnotations()
            languageobj.languageCode = code
            languageobj.userid = user
            languageobj.imageid = imageid
            languageobj.fulltextid = textobject
            languageobj.save()

def contactus(request):
    context = {}
    if request.method == "POST":
        context["error"] = "Contact us Submmited"
        return render(request, 'BrandAnalysisApp/ContactUs.html',context)
    else:
        return render(request, 'BrandAnalysisApp/ContactUs.html',context)

def activate(request, uidb64, token):
    try:
        uid = force_text(urlsafe_base64_decode(uidb64))
        user = UserCustom.objects.get(uemail=uid)
    except(TypeError, ValueError, OverflowError, User.DoesNotExist):
        user = None
    if user is not None and account_activation_token.check_token(user, token):
        user.uactivated = True
        user.save()
        return HttpResponse('Thank you for your email confirmation. Now you can login your account.')
    else:
        return HttpResponse('Activation link is invalid!')

def forgotpassword(request):
    context = {}
    if request.method == "POST":
        context["error"] = ""
        return render(request, 'BrandAnalysisApp/ForgotPassword.html',context)
    else:
        return render(request, 'BrandAnalysisApp/ForgotPassword.html',context)


def adminHome(request):
    context = {}
    if request.method == "POST":
        context["error"] = ""
        return render(request, 'BrandAnalysisApp/homeadmin.html', context)
    else:
        context["questions"] = [["sdf", "sfsf", "1"], ["2"]]
        return render(request, 'BrandAnalysisApp/homeadmin.html', context)


def editcompany(request):
    context = {}
    if request.method == "POST":
        context["error"] = ""
        return render(request, 'BrandAnalysisApp/editchanel.html', context)
    else:
        return render(request, 'BrandAnalysisApp/editchanel.html', context)

def viewcompany(request):
    context = {}
    if request.method == "POST":
        context["error"] = ""
        return render(request, 'BrandAnalysisApp/clientdetail.html', context)
    else:
        return render(request, 'BrandAnalysisApp/clientdetail.html', context)


def delete(request):
    context = {}
    return render(request, 'BrandAnalysisApp/clientdetail.html', context)
    # context["alert"] = "Are you sure you want to delete?"

