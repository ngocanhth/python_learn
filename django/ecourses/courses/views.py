from django.shortcuts import redirect, render
from django.http import HttpResponse
from courses.models import Lesson
# from .models import Lesson
from .admin import LessonForm
from django.views import View


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