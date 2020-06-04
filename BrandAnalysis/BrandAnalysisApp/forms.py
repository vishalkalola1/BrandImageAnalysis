from django import forms
from .models import UserCustom, UploadFileAnnotations

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
        model = UploadFileAnnotations
        fields = ['file','userid','title']


