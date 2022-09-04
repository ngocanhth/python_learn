from django.contrib import admin
from django.contrib.auth.models import Permission
from django.utils.html import mark_safe
from .models import Category, Course, Lesson, Tag, User
from django import forms
from django.db.models import Count # Day du phuong thuc thong ke trong CSDL dem, max, min, everage...
from ckeditor_uploader.widgets import CKEditorUploadingWidget
from django.urls import path
from django.template.response import TemplateResponse

class LessonForm(forms.ModelForm):
    content = forms.CharField(widget=CKEditorUploadingWidget)
    class Meta:
        model = Lesson
        fields = '__all__'

# Nhung in line trong quan he many to many
class LessonTagInline(admin.TabularInline): # hoac thay TabularInline = StackedInline
    model = Lesson.tags.through
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
    inlines = [LessonTagInline]
    
    def avatar(self, lesson):
        return mark_safe("<img src='/static/{img_url}' width='120px' alt='{alt}' />".format(img_url=lesson.image.name, alt=lesson.subject))

class CourseInline(admin.StackedInline):
    model = Course
    pk_name = 'category'
class CategoryAdmin(admin.ModelAdmin):
    inlines = (CourseInline, )
class LessonInline(admin.StackedInline):
    model = Lesson
    pk_name = 'course'
class CourseAdmin(admin.ModelAdmin):
    inlines = (LessonInline, )
class CourseAppAdminSite(admin.AdminSite):
    site_header: str = "HE THONG KHOA HOC TRUC TUYEN"
    
    def get_urls(self):
        return [
            path('course-stats/', self.course_stats)
        ] + super().get_urls()
        
    def course_stats(self, request):
        course_count = Lesson.objects.filter(active=True).count()
        
        # Truy van nang cao dem xem moi khoa hoc co bao nhieu bai hoc
        
        stats = Course.objects.annotate(lesson_count=Count('lessonsquery')).values('id', 'subject', 'lesson_count')
        # lesson la gia tri related_query_name='lessons' khai bao trong model Lesson
        return TemplateResponse(request, 'admin/course-stats.html', {
            'course_count': course_count,
            'stats': stats
        })
    
admin_site = CourseAppAdminSite('mycourse')

admin.site.register(Category, CategoryAdmin)
admin.site.register(Course, CourseAdmin)
admin.site.register(Lesson, LessonAdmin)
admin.site.register(User)
admin.site.register(Permission)


# admin_site.register(Category, CategoryAdmin)
# admin_site.register(Course, CourseAdmin)
# admin_site.register(Lesson, LessonAdmin)