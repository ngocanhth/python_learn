from django.contrib import admin
from django.utils.html import mark_safe
from .models import Category, Course, Lesson, Tag
from django import forms
from ckeditor_uploader.widgets import CKEditorUploadingWidget


class LessonForm(forms.ModelForm):
    content = forms.CharField(widget=CKEditorUploadingWidget)
    class Meta:
        model = Lesson
        fields = '__all__'
class LessonAdmin(admin.ModelAdmin):
    class Media:
        css = {
            'all': ['/static/css/main.css']
        }
        js = ['/static/js/course.js']
    
    form = LessonForm 
    list_display = ["id", "subject", "created_date", "active", "course"]
    search_fields = ["subject", "created_date", "active", "content", "course__subject"]
    list_filter = ["subject","course__subject"]
    readonly_fields = ['avatar']
    
    def avatar(self, lesson):
        return mark_safe("<img src='/static/{img_url}' width='120px' alt='{alt}' />".format(img_url=lesson.image.name, alt=lesson.subject))
    
class CourseAppAdminSite(admin.AdminSite):
    site_header: str = "HE THONG KHOA HOC TRUC TUYEN"
admin_site = CourseAppAdminSite('mycourse')

admin.site.register(Category)
admin.site.register(Course)
admin.site.register(Lesson, LessonAdmin)
