from django import forms
from .models import UserCustom, uploadFile, HelpTable,ContactUSTable

class LoginForm(forms.ModelForm):
    class Meta:
        model = UserCustom
        fields = ['uemail','upassword','updatedon']

class RegisterForm(forms.ModelForm):
    class Meta:
        model = UserCustom
        fields = ['uname','upassword','uemail','unumber','usemail','ureportfrequency','usname','utoolusage','ustartdate']

class UploadFileForm(forms.ModelForm):
    class Meta:
        model = uploadFile
        fields = ['file']

class EditUserForm(forms.ModelForm):
    class Meta:
        model = UserCustom
        fields = ['uname','unumber','usemail','ureportfrequency','usname','uactivated']

class EditClientForm(forms.ModelForm):
    class Meta:
        model = UserCustom
        fields = ['unumber','usemail','ureportfrequency','usname']


class ChangePassword(forms.Form):
    old_password = forms.CharField(max_length=50)
    new_password = forms.CharField(max_length=50)
    reenter_password = forms.CharField(max_length=50)

class HelpPage(forms.ModelForm):
    class Meta:
        model = HelpTable
        fields = ['msg']


class ContactForm(forms.ModelForm):
    class Meta:
        model = ContactUSTable
        fields = ['fullname','email','details','country']


