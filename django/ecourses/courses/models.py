from distutils.command.upload import upload
from email.policy import default
from pydoc import describe
from xml.parsers.expat import model
from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.

class User(AbstractUser):
    avatar = models.ImageField(upload_to='uploads/%Y/%n')

class Category(models.Model):
    name = models.CharField(max_length=100, null=False, unique=True)
    
    def __str__(self):
        return self.name
class ItemBase(models.Model):
    class Meta:
        abstract = True
        
    subject = models.CharField(max_length=255, null=False)
    image = models.ImageField(upload_to='courses/%Y/%m', default=None)
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)
    active = models.BooleanField(default=True)
    
    def __str__(self):
        return self.subject
    
class Course (ItemBase):
    class Meta:
        unique_together = ('subject', 'category') #trong 1 danh muc ko dc phep trung ten khoa hoc subject 
        ordering =["-id"] # sap xep tang dan theo id, ["-id"] giam dan theo id
       # ordering =["subject", "created_date"]
    description = models.TextField(null=True, blank=True)
    category = models.ForeignKey(Category, on_delete=models.SET_NULL, null=True)
class Lesson(ItemBase):
    class Meta:
        unique_together = ('subject', 'course') #trong 1 khoa hoc ko dc phep trung ten bai hoc subject 
    content = models.TextField(null=True, blank=True)
    course = models.ForeignKey(Course, on_delete=models.CASCADE)
    tags = models.ManyToManyField('Tag', blank=True, null=True)
    
class Tag(ItemBase):
    name = models.CharField(max_length=50, unique=True)
    
    
    def __str__(self):
        return self.subject