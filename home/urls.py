from django.conf.urls import url, include
from . import views
from django.contrib.auth import views as auth_views
from allauth.account import views as all_views 
from django.conf import settings
from django.conf.urls.static import static 
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.urls import path
urlpatterns = [
	path('', views.Home, name='index'),
	path("dashboard/", views.dashboard, name="dashboard"),
	path("Track/", views.track, name="Track"),
	path("Tracking/", views.trackin, name="Trackin"),
	path("user_track/", views.user_track, name="user_track"),
	path("verify/", views.verify, name="verify"),
	path("users/", views.users, name="users"),
	path("ad_category/", views.Categories, name="ad_category"),
	path("ad_promotion/", views.coupon, name="ad_promotion"),
	url(r"^category/(?P<pk>\d+)/$", views.Category, name="category_d"),
	
	
]
urlpatterns+=staticfiles_urlpatterns()
urlpatterns+=static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT) 
