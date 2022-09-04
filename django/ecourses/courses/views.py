from django.shortcuts import redirect, render
from django.http import HttpResponse
from courses.models import Lesson
# from .models import Lesson
from .admin import LessonForm
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