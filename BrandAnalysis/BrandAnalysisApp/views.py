from django.forms import modelformset_factory
from django.shortcuts import render, redirect
from .forms import LoginForm, RegisterForm, UploadFileForm
from .models import User,UploadFile

import os

def login(request):
    context = {}
    if request.method == "POST":
        userform = LoginForm(request.POST)
        if userform.is_valid():
            username = userform.instance.uname
            print(username)
        return redirect('home')
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
        return render(request, 'BrandAnalysisApp/Home.html',context)

def handle_uploaded_file(f,name):
    filename_w_ext = os.path.basename(name)
    path = '/Users/vishal/Documents/Projects/PRI/BrandAnalysis/BrandAnalysisApp/Media/' + filename_w_ext
    print(path)
    with open(path, 'wb+') as destination:
        for chunk in f.chunks():
            destination.write(chunk)