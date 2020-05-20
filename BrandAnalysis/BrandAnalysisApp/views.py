from django.forms import modelformset_factory
from django.http import HttpResponseRedirect, HttpResponse
from django.shortcuts import render, redirect
from django import forms
from .forms import LoginForm, RegisterForm, UploadFileForm
from .models import UserCustom,UploadFile
from django.contrib.auth import authenticate, login
from django.urls import reverse
from django.contrib.auth.models import User,auth
from django.contrib.sites.shortcuts import get_current_site
from django.utils.encoding import force_bytes, force_text
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.template.loader import render_to_string
from .Controllers.TokenGenerator import account_activation_token
from django.core.mail import EmailMessage
import os
from google.cloud import vision
from google.cloud.vision import types
import requests
import base64

os.environ["GOOGLE_APPLICATION_CREDENTIALS"] = r'pristockmarket.json'

def home(request):
    context = {}
    if request.method == "POST":
        return render(request, 'BrandAnalysisApp/index.html', context)
    else:
        return render(request, 'BrandAnalysisApp/index.html', context)


def login(request):
    context = {}
    if request.method == "POST":
        username = request.POST['uemail']
        password = request.POST['upassword']
        try:
            user = UserCustom.objects.get(uemail=username)
            if user.uemail == username and user.upassword == password:
                if user.uactivated:
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
    encoded_string = base64.b64encode(f.read()).decode('UTF-8')
    # callgoogleVisionAPi(encoded_string)

    filename_w_ext = os.path.basename(name)
    path = '/Users/vishal/Documents/Projects/PRI/BrandAnalysis/BrandAnalysisApp/Media/' + filename_w_ext
    print(path)
    with open(path, 'wb+') as destination:
        for chunk in f.chunks():
            destination.write(chunk)

def callgoogleVisionAPi(obj):
    url = 'https://vision.googleapis.com/v1/images:annotate?key=AIzaSyDjL9v7LlXtC2gnr4wu8SvOHGa70Ej25UI'
    data = { "requests": [{ "image": { "content": obj }, "features": [{"maxResults": 10, "type": "OBJECT_LOCALIZATION"},]}]}
    print(data)
    response = requests.post(url, data=data, headers={"Content-Type": "application/json"})
    print(response)

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
        return render(request, 'BrandAnalysisApp/homeadmin.html', context)
