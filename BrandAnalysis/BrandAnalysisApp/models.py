from django.db import models
from datetime import datetime
from django.utils import timezone
import uuid

# Create your models here.
class UserCustom(models.Model):
    id = models.AutoField(primary_key=True)
    uname = models.CharField(max_length=100)
    unumber = models.CharField(max_length=15)
    usemail = models.CharField(max_length=100)
    ureportfrequency = models.CharField(max_length=50)
    usname = models.CharField(max_length=100)
    utoolusage = models.CharField(max_length=100)
    ustartdate = models.DateField()
    uemail = models.EmailField()
    upassword = models.CharField(max_length=50)
    utype = models.CharField(max_length=10,default="user")
    uactivated = models.BooleanField(default=False)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "user"

class uploadFile(models.Model):
    file = models.ImageField()

    class Meta:
        db_table = "uploadFile"

class UploadFileAnnotations(models.Model):
    id = models.AutoField(primary_key=True)
    file = models.CharField(max_length=1000)
    userid = models.ForeignKey(UserCustom, on_delete=models.CASCADE)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "UploadFileAnnotations"

class FaceAnnotations(models.Model):
    id = models.AutoField(primary_key=True)
    anger = models.CharField(max_length=100)
    blurred = models.CharField(max_length=100)
    headwear = models.CharField(max_length=100)
    joy = models.CharField(max_length=100)
    sorrow = models.CharField(max_length=100)
    surprise = models.CharField(max_length=100)
    underExposed = models.CharField(max_length=100)
    imageid = models.ForeignKey(UploadFileAnnotations, on_delete=models.CASCADE)
    userid = models.ForeignKey(UserCustom, on_delete=models.CASCADE)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "FaceAnnotations"

class ImagePropertiesAnnotation(models.Model):
    id = models.AutoField(primary_key=True)
    red = models.CharField(max_length=6)
    green = models.CharField(max_length=6)
    blue = models.CharField(max_length=6)
    pixelFraction = models.CharField(max_length=200)
    alpha = models.CharField(max_length=20)
    imageid = models.ForeignKey(UploadFileAnnotations, on_delete=models.CASCADE)
    userid = models.ForeignKey(UserCustom, on_delete=models.CASCADE)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "ImagePropertiesAnnotation"

class FullTextAnnotation(models.Model):
    id = models.AutoField(primary_key=True)
    text = models.CharField(max_length=1000)
    imageid = models.ForeignKey(UploadFileAnnotations, on_delete=models.CASCADE)
    userid = models.ForeignKey(UserCustom, on_delete=models.CASCADE)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "FullTextAnnotation"

class LanguageAnnotations(models.Model):
    id = models.AutoField(primary_key=True)
    languageCode = models.CharField(max_length=100)
    imageid = models.ForeignKey(UploadFileAnnotations, on_delete=models.CASCADE)
    userid = models.ForeignKey(UserCustom, on_delete=models.CASCADE)
    fulltextid = models.ForeignKey(FullTextAnnotation, on_delete=models.CASCADE)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "LanguageAnnotations"

class LabelAnnotations(models.Model):
    id = models.AutoField(primary_key=True)
    description = models.CharField(max_length=1000)
    imageid = models.ForeignKey(UploadFileAnnotations, on_delete=models.CASCADE)
    userid = models.ForeignKey(UserCustom, on_delete=models.CASCADE)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "LabelAnnotations"

class LandmarkAnnotations(models.Model):
    id = models.AutoField(primary_key=True)
    description = models.CharField(max_length=1000)
    imageid = models.ForeignKey(UploadFileAnnotations, on_delete=models.CASCADE)
    userid = models.ForeignKey(UserCustom, on_delete=models.CASCADE)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "LandmarkAnnotations"

class LocationAnnotations(models.Model):
    id = models.AutoField(primary_key=True)
    latitude = models.CharField(max_length=100)
    longitude = models.CharField(max_length=100)
    imageid = models.ForeignKey(UploadFileAnnotations, on_delete=models.CASCADE)
    userid = models.ForeignKey(UserCustom, on_delete=models.CASCADE)
    landmarkid = models.ForeignKey(LandmarkAnnotations, on_delete=models.CASCADE)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "LocationAnnotations"

class LocalizedObjectAnnotations(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=100)
    imageid = models.ForeignKey(UploadFileAnnotations, on_delete=models.CASCADE)
    userid = models.ForeignKey(UserCustom, on_delete=models.CASCADE)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "LocalizedObjectAnnotations"

class SafeSearchAnnotation(models.Model):
    id = models.AutoField(primary_key=True)
    adult = models.CharField(max_length=100)
    medical = models.CharField(max_length=100)
    racy = models.CharField(max_length=100)
    spoof = models.CharField(max_length=100)
    violence = models.CharField(max_length=100)
    imageid = models.ForeignKey(UploadFileAnnotations, on_delete=models.CASCADE)
    userid = models.ForeignKey(UserCustom, on_delete=models.CASCADE)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "SafeSearchAnnotation"


class TextAnnotations(models.Model):
    id = models.AutoField(primary_key=True)
    description = models.CharField(max_length=1000)
    locale = models.CharField(max_length=5)
    imageid = models.ForeignKey(UploadFileAnnotations, on_delete=models.CASCADE)
    userid = models.ForeignKey(UserCustom, on_delete=models.CASCADE)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "TextAnnotations"

class LogoAnnotations(models.Model):
    id = models.AutoField(primary_key=True)
    description = models.CharField(max_length=1000)
    imageid = models.ForeignKey(UploadFileAnnotations, on_delete=models.CASCADE)
    userid = models.ForeignKey(UserCustom, on_delete=models.CASCADE)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "LogoAnnotations"

class ReportTable(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=1000)
    userid = models.ForeignKey(UserCustom, on_delete=models.CASCADE)
    createdon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "ReportTable"


class HelpTable(models.Model):
    id = models.AutoField(primary_key=True)
    msg = models.CharField(max_length=2000)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "HelpTable"

class ContactUSTable(models.Model):
    id = models.AutoField(primary_key=True)
    fullname = models.CharField(max_length=200)
    email = models.EmailField()
    details = models.CharField(max_length=2000)
    country = models.CharField(max_length=2000)
    attend = models.BooleanField(default=False)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "ContactUSTable"





