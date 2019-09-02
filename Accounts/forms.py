from django import forms
from django.contrib.auth.forms import UserCreationForm, UserChangeForm
from allauth.socialaccount.forms import SignupForm
from allauth.account.forms import SetPasswordField,PasswordField
from .models import CustomUser


class CustomUserChangeForm(UserChangeForm):

	class Meta(UserChangeForm):
		model = CustomUser
		fields = ('username', 'email','address','phone', 'Candidate')

class CustomUserCreationForm(UserCreationForm):

	class Meta(UserCreationForm):
		model = CustomUser
		fields = ('username', 'email','first_name','last_name')

