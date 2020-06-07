from django import forms
from .models import UserCustom, uploadFile

class LoginForm(forms.ModelForm):
    class Meta:
        model = UserCustom
        fields = ['uemail','upassword','updatedon']

class RegisterForm(forms.ModelForm):
    class Meta:
        model = UserCustom
        fields = ['uname','upassword','uemail']

class UploadFileForm(forms.ModelForm):
    class Meta:
        model = uploadFile
        fields = ['file']


