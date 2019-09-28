from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from .forms import CustomUserCreationForm, CustomUserChangeForm
from .import models
# Register your models here.
class CustomUserAdmin(UserAdmin):
    add_form = CustomUserCreationForm
    form = CustomUserChangeForm
    model = models.CustomUser
    list_display = ['email', 'username']

admin.site.register(models.CustomUser)
admin.site.register(models.Candidate)
admin.site.register(models.Finder)
admin.site.register(models.Categories)
admin.site.register(models.project_handlers)
admin.site.register(models.project_managers)