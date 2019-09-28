from django.urls import path
from . import views as jv
urlpatterns = [
    path('create/', jv.JobCreate, name="jobCreate"),
    path('catechange/',jv.CatChange,name="catechange"),
    path('deadline/',jv.Deadline,name="deadline"),
    path('deadlines/',jv.dead_line_price,name="dead_price"),
    path('payin/',jv.payin,name="payin"),
    path('workload/',jv.workload,name="workload"),

]
