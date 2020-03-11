from django.db import models

# Create your models here.
class User(models.Model):
    uname = models.CharField(max_length=100)
    uemail = models.EmailField()
    upassword = models.CharField(max_length=50)
    class Meta:
        db_table = "user"

class UploadFile(models.Model):
    title = models.CharField(max_length=50)
    file = models.FileField()