from django.db import models
from datetime import datetime
from django.utils import timezone
import uuid

# Create your models here.
class UserCustom(models.Model):
    id = models.IntegerField(default=uuid.uuid4)
    uname = models.CharField(max_length=100)
    uemail = models.EmailField(primary_key=True)
    upassword = models.CharField(max_length=50)
    utype = models.CharField(max_length=10,default="user")
    uactivated = models.BooleanField(default=False)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "user"

class UploadFileAnnotations(models.Model):
    id = models.IntegerField(auto_created=True,primary_key=True)
    title = models.CharField(max_length=50)
    file = models.ImageField()
    userid = models.ForeignKey(UserCustom, on_delete=models.CASCADE)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "UploadFileAnnotations"

class FaceAnnotations(models.Model):
    id = models.IntegerField(auto_created=True, primary_key=True)
    anger = models.CharField(max_length=100)
    blurred = models.CharField(max_length=100)
    headwear = models.CharField(max_length=100)
    joy = models.CharField(max_length=100)
    sorrow = models.CharField(max_length=100)
    surprise = models.CharField(max_length=100)
    underExposed = models.CharField(max_length=100)
    imageid = models.ForeignKey(UploadFileAnnotations, on_delete=models.CASCADE)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "FaceAnnotations"

class ImagePropertiesAnnotation(models.Model):
    id = models.IntegerField(auto_created=True, primary_key=True)
    color = models.CharField(max_length=10)
    imageid = models.ForeignKey(UploadFileAnnotations, on_delete=models.CASCADE)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)


    class Meta:
        db_table = "ImagePropertiesAnnotation"

class FullTextAnnotation(models.Model):
    id = models.IntegerField(auto_created=True, primary_key=True)
    text = models.CharField(max_length=100)
    imageid = models.ForeignKey(UploadFileAnnotations, on_delete=models.CASCADE)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "FullTextAnnotation"

class LabelAnnotations(models.Model):
    id = models.IntegerField(auto_created=True, primary_key=True)
    description = models.CharField(max_length=100)
    imageid = models.ForeignKey(UploadFileAnnotations, on_delete=models.CASCADE)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "LabelAnnotations"

class LandmarkAnnotations(models.Model):
    id = models.IntegerField(auto_created=True, primary_key=True)
    description = models.CharField(max_length=100)
    imageid = models.ForeignKey(UploadFileAnnotations, on_delete=models.CASCADE)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "LandmarkAnnotations"

class LocalizedObjectAnnotations(models.Model):
    id = models.IntegerField(auto_created=True, primary_key=True)
    name = models.CharField(max_length=100)
    imageid = models.ForeignKey(UploadFileAnnotations, on_delete=models.CASCADE)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "LocalizedObjectAnnotations"

class SafeSearchAnnotation(models.Model):
    id = models.IntegerField(auto_created=True, primary_key=True)
    adult = models.CharField(max_length=100)
    medical = models.CharField(max_length=100)
    racy = models.CharField(max_length=100)
    spoof = models.CharField(max_length=100)
    violence = models.CharField(max_length=100)
    imageid = models.ForeignKey(UploadFileAnnotations, on_delete=models.CASCADE)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "SafeSearchAnnotation"

class TextAnnotations(models.Model):
    id = models.IntegerField(auto_created=True, primary_key=True)
    description = models.CharField(max_length=100)
    locale = models.CharField(max_length=5)
    imageid = models.ForeignKey(UploadFileAnnotations, on_delete=models.CASCADE)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "TextAnnotations"

class LogoAnnotations(models.Model):
    id = models.IntegerField(auto_created=True, primary_key=True)
    description = models.CharField(max_length=100)
    imageid = models.ForeignKey(UploadFileAnnotations, on_delete=models.CASCADE)
    createdon = models.DateTimeField(default=timezone.now)
    updatedon = models.DateTimeField(default=timezone.now)

    class Meta:
        db_table = "LogoAnnotations"



