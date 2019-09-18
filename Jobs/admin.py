from django.contrib import admin
from . import models 
# Register your models here.

admin.site.register(models.Jobs)
admin.site.register(models.Deadline)
admin.site.register(models.subcategory)
admin.site.register(models.Order)
admin.site.register(models.Workload)
# admin.site.register(models.stage)