from django.contrib import admin
from . import models 
# Register your models here.

admin.site.register(models.Jobs)
admin.site.register(models.Deadline)
admin.site.register(models.subcategory)