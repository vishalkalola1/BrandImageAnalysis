from django import forms
from .models import UserCustom, UploadFile

class LoginForm(forms.ModelForm):
    class Meta:
        model = UserCustom
        fields = ['uemail','upassword']


class RegisterForm(forms.ModelForm):
    class Meta:
        model = UserCustom
        fields = ['uname','upassword','uemail']


class UploadFileForm(forms.ModelForm):
    class Meta:
        model = UploadFile
        fields = ['file']

