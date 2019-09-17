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
]
urlpatterns+=staticfiles_urlpatterns()
urlpatterns+=static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT) 
