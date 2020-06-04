import io
import os
from django.http import HttpResponseRedirect, HttpResponse
from django.shortcuts import render
from .forms import LoginForm, RegisterForm, UploadFileForm
from .models import UserCustom,UploadFileAnnotations, LogoAnnotations
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

os.environ["GOOGLE_APPLICATION_CREDENTIALS"] = r'pristockmarket.json'

def home(request):
    context = {}
    if request.method == "POST":
        return render(request, 'BrandAnalysisApp/index.html', context)
    else:
        return render(request, 'BrandAnalysisApp/index.html', context)


def login(request):
    context = {}

    if request.COOKIES.get('user_id'):     # Auto Login Code
        type = request.COOKIES.get('user_role')
        if type.lower() == "admin":
            return HttpResponseRedirect(reverse("adminHome"))
        else:
            return HttpResponseRedirect(reverse("uploadImage"))


    if request.method == "POST":
        username = request.POST['uemail']
        password = request.POST['upassword']
        try:
            user = UserCustom.objects.get(uemail=username)
            if user.uemail == username and user.upassword == password:
                user.updatedon = timezone.now()
                user.save()
                if user.uactivated:
                    request.COOKIES['user_id'] = user.id
                    request.COOKIES['user_email'] = user.uemail
                    request.COOKIES['user_role'] = user.utype
                    if user.utype.lower() == "admin":
                        return HttpResponseRedirect(reverse("adminHome"))
                    else:
                        return HttpResponseRedirect(reverse("uploadImage"))
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
            user = registerform.save(commit=False)
            tempuser = user()
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
        imageForms = UploadFileForm(request.POST, request.FILES)
        if imageForms.is_valid():
            files = imageForms.files.getlist('file')
            for i in range(len(files)):
                file = files[i]
                handle_uploaded_file(file, file.name)
        else:
            context["error"] = "File not uploaded try again later"
        context["error"] = "Image uploaded successfully"
        return render(request, 'BrandAnalysisApp/UploadImage.html',context)
    else:
        return render(request, 'BrandAnalysisApp/UploadImage.html',context)

def handle_uploaded_file(f,name):
    filename_w_ext = os.path.basename(name)
    path = '/Users/vishal/Documents/Projects/PRI/BrandAnalysis/BrandAnalysisApp/Media/' + filename_w_ext
    callgoogleVisionAPi(path)
    with open(path, 'wb+') as destination:
        for chunk in f.chunks():
            destination.write(chunk)

def callgoogleVisionAPi(obj):

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

    print('Labels:')
    for label in labels:
        print(label.description)

    # Performs label detection on the image file
    response = client.logo_detection(image=image)
    logos = response.logo_annotations
    for logo in logos:
        print(logo.description)
        logoobj = LogoAnnotations()
        logoobj.description = logo.description





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
        user = UserCustom.objects.get(pk=uid)
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

