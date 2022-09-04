from django.shortcuts import redirect, render
from django.http import HttpResponse
from courses.models import Lesson
# from .models import Lesson
from .admin import LessonForm
from django.views import View
from rest_framework import viewsets, permissions
from .models import Course
from .serializers import CourseSerializer


# Create your views here.

# def index(request):
#   #  return HttpResponse("e-courses app")
#     return render(request, template_name = "index.html", context={"name":"Ngoc Anh"})



def index(request):
	lessons = Lesson.objects.all()

	return render(request, 'lesson/index.html', {'lessons': lessons})

def detail(request):
	lessons = Lesson.objects.get(pk=1)

	if request.method == 'POST':
		form = LessonForm(request.POST, instance=lessons)

		if form.is_valid():
			form.save()

			return redirect('detail')
	else:
		form = LessonForm(instance=lessons)

	return render(request, 'lesson/detail.html', {'lessons': lessons, 'form': form})


def welcome(request, welcome_id):
	return HttpResponse("<h1>Welcome!</h1>" + str(welcome_id))

def welcome2(request, year):
	return HttpResponse("<h1>Welcome2!</h1>" + str(year))

# Viet View dang class

class TestView(View):
	def get(self, request):
		return HttpResponse("Response Request")
  
	def post(self, request):
		pass

# ModelViewSet ke thua APIView ke thua View chuan cua django
class CourseViewSet(viewsets.ModelViewSet):
	queryset = Course.objects.filter(active=True)
	serializer_class = CourseSerializer
	# permission_classes = [permissions.IsAuthenticated] # IsAuthenticated tat ca API phai io trang thai user da dang nhap, tren rest framwork thi admin phai login
 
	# xem danh sach thi ai cung xem dc con them sua xoa thi phai login
	
	def	get_permissions(self):
		if self.action == 'list':
			return [permissions.AllowAny()]
		return [permissions.IsAuthenticated()]

	# list GET danh sach khoa hoc
	#  POST them khoa hoc
	#  PUT khoa hoc
	#  DELETE khoa hoc