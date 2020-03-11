from django import forms
from .models import User

class LoginForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ['uname','upassword']

class RegisterForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ['uname','upassword','uemail']