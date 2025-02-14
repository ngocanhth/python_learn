from multiprocessing import context
from django.shortcuts import redirect, render
from django.http import HttpResponse
from .models import Lesson
from .admin import LessonForm
from django.views import View
from rest_framework import viewsets, permissions, status, generics
from .models import Course, User
from .serializers import CourseSerializer, LessonSerializer, UserSerializer
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.parsers import MultiPartParser

from rest_framework.response import Response
from rest_framework.views import APIView
from django.contrib.auth.hashers import make_password

# Create your views here.

# def index(request):
#   #  return HttpResponse("e-courses app")
#     return render(request, template_name = "index.html", context={"name":"Ngoc Anh"})


class UserRegisterView(APIView):
    def post(self, request):
        serializer = UserSerializer(data=request.data)
        if serializer.is_valid():
            serializer.validated_data['password'] = make_password(serializer.validated_data['password'])
            user = serializer.save()
            
            return JsonResponse({
                'message': 'Register successful!'
            }, status=status.HTTP_201_CREATED)

        else:
            return JsonResponse({
                'error_message': 'This email has already exist!',
                'errors_code': 400,
            }, status=status.HTTP_400_BAD_REQUEST)
            
            
            

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

class UserViewSet(
        viewsets.ViewSet, 
        # generics.ListAPIView,
        # generics.UpdateAPIView,  
        generics.CreateAPIView, 
        generics.RetrieveAPIView):
    queryset = User.objects.filter(is_active=True)
    serializer_class = UserSerializer
    parser_class = [MultiPartParser, ]
    
    def get_permissions(self):
        if(self.action == 'retrieve'):
            return [permissions.IsAuthenticated()]

        return [permissions.AllowAny()]
# ModelViewSet ke thua APIView ke thua View chuan cua django




class CourseViewSet(viewsets.ModelViewSet):
    queryset = Course.objects.filter(active=True)
    serializer_class = CourseSerializer
    permission_classes = [permissions.IsAuthenticated] # IsAuthenticated tat ca API phai io trang thai user da dang nhap, tren rest framwork thi admin phai login
 
    # xem danh sach thi ai cung xem dc con them sua xoa thi phai login
    
    # def	get_permissions(self):
    # 	if self.action == 'list':
    # 		return [permissions.AllowAny()]
    # 	return [permissions.IsAuthenticated()]

    # list GET danh sach khoa hoc
    #  POST them khoa hoc
    #  PUT khoa hoc
    #  DELETE khoa hoc
 
class LessonViewSet(viewsets.ModelViewSet):
    queryset = Lesson.objects.filter(active=True)
    serializer_class = LessonSerializer
    
 # API an bai hoc
    
    @action(methods=["post"], detail=True, url_path='hide-lesson', url_name='hide-lesson')
    # ngoai 5 API mac dinh thi them 1 API router la:  /lesson/{pk}/hide-lesson
    def hide_lesson(self, request, pk):
        try:
            global l
            l = Lesson.objects.get(pk=pk)
            l.active = False
            l.save()
        except Lesson.DoesNotExist:
            return Response(status=status.HTTP_400_BAD_REQUEST)

        return Response(data=LessonSerializer(l, context={'request': request}).data,status=status.HTTP_200_OK)
        
          # truyen context request de duong dan sau khi post method co day du duong dan cua base url context={'request': request}