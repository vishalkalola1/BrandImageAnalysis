from django import forms
from .models import User, UploadFile

class LoginForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ['uemail','upassword']

class RegisterForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ['uname','upassword','uemail']


class UploadFileForm(forms.ModelForm):
    class Meta:
        model = UploadFile
        fields = ['file']

