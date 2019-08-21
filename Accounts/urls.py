from django.conf.urls import url, include
from django.contrib import admin
from django.contrib.auth.views import login, password_reset
from django.conf import settings
from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.contrib.auth import views as auth_views
# from . import views
from allauth.account import views as all_views
from allauth.socialaccount import views as so_views
urlpatterns = [
	url(r'^accounts/', include('allauth.urls')),
	url(r'^login/$', all_views.LoginView.as_view(), {'template_name':'Accounts/index.html'}, name='account_login'),
	url(r'^SignUp/$', all_views.SignupView.as_view(), {'template_name':'Accounts/signup.html'}, name='account_signup'),
	]