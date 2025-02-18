from django.urls import path
from . import views as jv

urlpatterns = [
    path('create/', jv.job_create, name="jobCreate"),
    path('catechange/', jv.cat_change, name="catechange"),
    path('deadline/', jv.deadline, name="deadline"),
    path('deadlines/', jv.dead_line_price, name="dead_price"),
    path('payin/', jv.payin, name="payin"),
    path('workload/', jv.workload, name="workload"),
    path('calendar/', jv.calendar, name="calendar"),
    path('customize/', jv.customize, name="customize"),
    path('coupons/', jv.coupons, name="coupon"),
    path('payin_package/', jv.payin_package, name="payin_package"),

]
