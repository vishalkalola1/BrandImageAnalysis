import io
import os
from django.http import HttpResponseRedirect, HttpResponse
from .forms import LoginForm, RegisterForm, UploadFileForm, EditUserForm, EditClientForm, HelpPage,ContactForm
from .models import UserCustom,UploadFileAnnotations, LogoAnnotations, LabelAnnotations, FaceAnnotations, ImagePropertiesAnnotation, FullTextAnnotation, LandmarkAnnotations, LocationAnnotations, LocalizedObjectAnnotations, SafeSearchAnnotation, TextAnnotations, LanguageAnnotations, ReportTable, HelpTable, ContactUSTable
from django.contrib.auth.models import User
from django.contrib.sites.shortcuts import get_current_site
from django.template.loader import render_to_string
from .Controllers.TokenGenerator import account_activation_token
from django.core.mail import EmailMessage
from django.utils import timezone
from google.cloud import vision
from google.cloud.vision import types
from django.shortcuts import redirect, render
from django.contrib import messages

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
                return redirect("dashboard")

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
                        return redirect("dashboard")
                else:
                    messages.success(request,"User is not Activated")
            else:
                messages.success(request, "User is not authenticated")
            return redirect('login')
        except:
            messages.success(request, "User is not register with this email id")
            return redirect('login')
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
                messages.success(request, "Email already register.")
                return redirect('register')
            except:
                user = registerform.save(commit=False)
                user.uactivated = False
                registerform.save()
                sendEmail(request, user, "Please click on the link below to verify your email for sign-in to Stalk Market.", "activate", "Verify your email")
                messages.success(request, "Please confirm your email address to complete and activate the account")
                return redirect('register')
        else:
            messages.success(request, "Email already register.")
            return redirect('register')
    else:
        userform = RegisterForm()
        context["form"] = userform
        return render(request,'BrandAnalysisApp/clientregistration.html',context)

def uploadImage(request,id):
    context = {}
    if (request.session.get('userid') is None) or (request.session.get("usertype").lower() != "admin"):
        return redirect('home')

    user = UserCustom.objects.get(id=id)
    if request.method == "POST":
        imageForms = UploadFileForm(request.POST, request.FILES)
        if imageForms.is_valid():
            files = imageForms.files.getlist('file')
            for i in range(len(files)):
                file = files[i]
                handle_uploaded_file(file, file.name, user)
            messages.success(request, "Image uploaded successfully")
        else:
            messages.success(request, "File not uploaded try again later")
        return redirect('uploadImage', id)
    else:
        context["user"] = user
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
        if text.locale != "":
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
        contactform = ContactForm(request.POST)
        if contactform.is_valid():
            contacttable = ContactUSTable()
            contacttable.fullname = contactform.instance.fullname
            contacttable.email = contactform.instance.email
            contacttable.details = contactform.instance.details
            contacttable.country = contactform.instance.country
            contacttable.save()
            messages.success(request, "We will get back to you soon.")
            return redirect('contactus')
    else:
        return render(request, 'BrandAnalysisApp/ContactUs.html',context)

def activate(request, id, token):
    try:
        user = UserCustom.objects.get(id=id)
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
        username = request.POST['uemail']
        user = UserCustom.objects.get(uemail=username)
        sendEmail(request,user,"Please click the link below to reset your password.","reset","Link for password reset")
        messages.success(request, "We sent link on register email id for reset your password.")
        return redirect('forgotpassword')
    else:
        return render(request, 'BrandAnalysisApp/ForgotPassword.html',context)

def sendEmail(request,user,msg,url,mailsubject):
    current_site = get_current_site(request)
    mail_subject = mailsubject
    message = render_to_string('BrandAnalysisApp/acc_active_email.html', {
        'user': user,
        'domain': current_site.domain,
        'id': user.id,
        'token': account_activation_token.make_token(user),
        'msg': msg,
        'urlcustom':url
    })
    email = EmailMessage(
        mail_subject, message, to=[user.uemail]
    )
    email.send()

def reset(request,id,token):
    context = {}
    if request.POST == "POST":
        try:
            user = UserCustom.objects.get(id=id)
            if user is not None and account_activation_token.check_token(user, token):
                return HttpResponse('Thank you for your email confirmation. Now you can login your account.')
            else:
                return HttpResponse('Activation link is invalid!')
        except(TypeError, ValueError, OverflowError, User.DoesNotExist):
            user = None
            return HttpResponse('Activation link is invalid!')
    else:
        return render(request,'BrandAnalysisApp/homeadmin.html',context)

def report(request,id):
    context = {}
    user = UserCustom.objects.get(id=id)
    if request.POST == "POST":
        pass
    else:
        context["user"] = user
        return render(request, 'BrandAnalysisApp/report.html', context)

def adminHome(request):
    context = {}

    if (request.session.get('userid') is None) or (request.session.get("usertype").lower() != "admin"):
        return redirect('home')

    if request.method == "POST":
        context["error"] = ""
        return render(request, 'BrandAnalysisApp/homeadmin.html', context)
    else:
        users = UserCustom.objects.all()
        count = 3
        mainArray = []
        for index in range(0, len(users), count):
            tempArray = []
            for subindex in range(index,index+count):
                if subindex < len(users):
                    reportobj = ReportTable.objects.filter(userid=users[subindex].id).order_by('-id')
                    if len(reportobj) > 0:
                        tempArray.append({"user":users[subindex],"reports":reportobj[0]})
                    tempArray.append({"user": users[subindex], "reports": reportobj})

                else:
                    break
            mainArray.append(tempArray)

        context["questions"] = mainArray
        return render(request, 'BrandAnalysisApp/homeadmin.html', context)

def editcompany(request,id):
    context = {}

    if (request.session.get('userid') is None) or (request.session.get("usertype").lower() != "admin"):
        return redirect('home')

    user = UserCustom.objects.get(id=id)
    count = len(ReportTable.objects.filter(userid=id))
    if request.method == "POST":
        editform = EditUserForm(request.POST)
        if editform.is_valid():
            user.uname = editform.instance.uname
            user.unumber = editform.instance.unumber
            user.usemail = editform.instance.usemail
            user.ureportfrequency = editform.instance.ureportfrequency
            user.usname = editform.instance.usname
            user.utoolusage = editform.instance.utoolusage
            user.uactivated = (editform.instance.uactivated == 1)
            user.updatedon = timezone.now()
            user.save()
            context["user"] = user
            context["noreport"] = count
            messages.success(request, "Successfully updated data")
        else:
            messages.success(request, "Something went wrong try again later")
        return redirect('editcompany',id)

    else:
        context["user"] = user
        context["noreport"] = count
        context["form"] = EditUserForm()
        return render(request, 'BrandAnalysisApp/editchanel.html', context)

def viewcompany(request,id):
    context = {}

    if (request.session.get('userid') is None) or (request.session.get("usertype").lower() != "admin"):
        return redirect('home')

    if request.method == "POST":
        context["error"] = ""
        return render(request, 'BrandAnalysisApp/clientdetail.html', context)
    else:
        user = UserCustom.objects.get(id=id)
        context["user"] = user
        context["noreport"] = len(ReportTable.objects.filter(userid=id))
        return render(request, 'BrandAnalysisApp/clientdetail.html', context)

def delete(request,id): # Todo
    context = {}

    if (request.session.get('userid') is None) or (request.session.get("usertype").lower() != "admin"):
        return redirect('home')

    # instance = UserCustom.objects.get(id=id)
    # instance.delete()
    messages.success(request, "Record deleted sucessfully.")
    return HttpResponseRedirect("/adminHome")

def logout(request):
    try:
        del request.session['userid']
    except:
        pass
    return redirect('home')

#########################################################################################

def dashboard(request):
    context = {}

    if (request.session.get('userid') is None): # or request.session.get("usertype").lower() == "admin" :
        return redirect('home')

    user = UserCustom.objects.get(id=request.session.get("userid"))
    context["user"] = user
    if request.method == "POST":
        return render(request, 'BrandAnalysisApp/dashboard.html', context)
    else:
        data = []
        labels = ["coco","paris","chanel","parfum","mademoiselle","eau","noir","rouge"]
        totaltextdata = TextAnnotations.objects.count()
        for label in labels:
            results = TextAnnotations.objects.filter(description__icontains=label).exclude(locale__exact='').count()
            percentage = '{0:.2f}'.format((results / totaltextdata * 100));
            data.append(percentage)


        context["piedata"] = data
        context["pielabels"] = labels

        return render(request, 'BrandAnalysisApp/dashboard.html', context)

def changeProfile(request):
    context = {}
    if (request.session.get('userid') is None) or request.session.get("usertype").lower() == "admin":
        return redirect('home')

    user = UserCustom.objects.get(id=request.session.get("userid"))
    context["user"] = user
    if request.method == "POST":
        editform = EditClientForm(request.POST)
        if editform.is_valid():
            user.usname = editform.instance.usname
            user.unumber = editform.instance.unumber
            user.usemail = editform.instance.usemail
            user.ureportfrequency = editform.instance.ureportfrequency
            user.save()
            messages.success(request,"Profile updated successfully")
        return redirect('changeProfile')
    else:
        return render(request, 'BrandAnalysisApp/editcompanyprofile.html', context)

def changePassword(request):
    context = {}

    if (request.session.get('userid') is None) or request.session.get("usertype").lower() == "admin":
        return redirect('home')

    user = UserCustom.objects.get(id=request.session.get("userid"))
    context["user"] = user
    if request.method == "POST":
        opwd = request.POST["opwd"]
        newpwd = request.POST["newpwd"]
        confirmpwd = request.POST["confirmpwd"]
        if user.upassword != opwd:
            messages.success(request, "Old Password does not matched")
        elif newpwd != confirmpwd:
            messages.success(request, "New password does not matched")
        else:
            user.upassword = newpwd
            user.save()
            messages.success(request, "Password updated Successfully")
        return redirect('changePassword')
    else:
        context["error"] = ""
        return render(request, 'BrandAnalysisApp/changepassword.html', context)

def help(request):
    context = {}
    if (request.session.get('userid') is None) or request.session.get("usertype").lower() == "admin":
        return redirect('home')

    user = UserCustom.objects.get(id=request.session.get("userid"))
    context["user"] = user
    if request.method == "POST":
        page = HelpPage(request.POST)
        if not page.is_valid():
            helptable = HelpTable()
            helptable.msg = page.instance.msg
            helptable.save()
            msg = "Your help ID: " + str(helptable.id) + "\nYour query has been submitted successfully. Sip a cup of coffee until our help team responds you back."
            sendEmail(request,user,msg,"","Query successfully submitted")
            messages.success(request, "Your query submitted successfully. Please check your registed email for help id.")
            return redirect('help')
        else:
            messages.success(request, "Your query submitted successfully. Please check your registed email for help id.")
            return redirect('help')
    else:
        return render(request, 'BrandAnalysisApp/help.html', context)