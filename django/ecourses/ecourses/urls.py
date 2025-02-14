"""ecourses URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include, re_path
from ckeditor_uploader.fields import RichTextUploadingField
from django.conf import settings
from django.conf.urls.static import static
from courses.views import index, detail, welcome
from courses.admin import admin_site

# urlpatterns = [
#     path('', include('courses.urls')),
#     path('admin/', admin.site.urls),
#     re_path(r'^ckeditor/', include('ckeditor_upload.urls')),
# ]

urlpatterns = [
    path('', include('courses.urls')),
    # path('', index, name='index'),
    # path('detail/', detail, name='detail'),
    # path('detail/<int:lesson_id/>', detail, name='detail'),
    path('admin/', admin.site.urls),
   # path('admin/', admin_site.urls),
    path('o/', include('oauth2_provider.urls', namespace="oauth2_provider")),
    path('ckeditor/', include('ckeditor_uploader.urls')),
   

  
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

