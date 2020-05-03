from django.db import models

# Create your models here.
class UserCustom(models.Model):
    uname = models.CharField(max_length=100)
    uemail = models.EmailField(primary_key=True)
    upassword = models.CharField(max_length=50)
    utype = models.CharField(max_length=10,default="user")
    uactivated = models.BooleanField(default=False)

    class Meta:
        db_table = "user"

class UploadFile(models.Model):
    title = models.CharField(max_length=50)
    file = models.ImageField()