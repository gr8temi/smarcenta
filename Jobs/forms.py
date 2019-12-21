from django import forms 
from . import models
class JobForm(forms.ModelForm):
    class Meta:
        model = models.Jobs
        fields = ("job_title","company","category","payment","description")
class CustomizeForm(forms.ModelForm):
    class Meta:
        model = models.Customize
        fields = ('title','name', 'email', 'phone', 'description') 