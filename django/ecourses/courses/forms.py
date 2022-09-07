from django.forms import ModelForm
from .models import Lesson

class LessonFormFrontend(ModelForm):
    class Meta:
        model = Lesson
        fields = '__all__'