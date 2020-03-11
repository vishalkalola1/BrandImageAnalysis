from django.shortcuts import render, redirect
from django.http import HttpResponse, HttpResponseRedirect
from .forms import LoginForm, RegisterForm
from .models import User
# Create your views here.

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
        pass
    else:
        return render(request, 'BrandAnalysisApp/Home.html',context)