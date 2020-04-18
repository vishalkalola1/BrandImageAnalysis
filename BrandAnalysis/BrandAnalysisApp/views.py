from django.forms import modelformset_factory
from django.shortcuts import render, redirect
from .forms import LoginForm, RegisterForm, UploadFileForm
from .models import User,UploadFile
from django.contrib.auth import authenticate, login
import os
from google.cloud import vision
from google.cloud.vision import types
import requests
import base64

os.environ["GOOGLE_APPLICATION_CREDENTIALS"] = r'pristockmarket.json'

def login(request):
    context = {}
    if request.method == "POST":
        userform = LoginForm(request.POST)
        if userform.is_valid():
            email = userform.instance.uemail
            password = userform.instance.upassword
            user = authenticate(request, uemail=email, upassword=password)
            if user is not None:
                login(request, user)
                return redirect('home')
            else:
                #login Fail
                context["error"] = "User is not authenticated"
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
            count = User.objects.filter(uemail=registerform.instance.uemail).count()
            if count == 0:
                registerform.save()
                return redirect('home')
            else:
                context["error"] = "User already exist"
                return render(request,'BrandAnalysisApp/Register.html',context)
    else:
        return render(request,'BrandAnalysisApp/Register.html',context)

def home(request):
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
        return redirect('home')
    else:
        return render(request, 'BrandAnalysisApp/UploadImage.html',context)

def handle_uploaded_file(f,name):
    encoded_string = base64.b64encode(f.read()).decode('UTF-8')
    callgoogleVisionAPi(encoded_string)

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