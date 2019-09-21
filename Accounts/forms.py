from django import forms
from django.contrib.auth.forms import UserCreationForm, UserChangeForm
from allauth.socialaccount.forms import SignupForm
from allauth.account.forms import SetPasswordField,PasswordField
from .models import CustomUser
import string
import random
from allauth.account.forms import SignupForm

class CustomUserChangeForm(UserChangeForm):

	class Meta(UserChangeForm):
		model = CustomUser
		fields = ('username', 'email','address','phone')

class CustomUserCreationForm(UserCreationForm):

	class Meta(UserCreationForm):
		model = CustomUser
		fields = ('username', 'email','first_name','last_name')

def random_string_generator(size=8, chars=string.ascii_lowercase + string.digits+ string.ascii_uppercase):
	return ''.join(random.choice(chars) for _ in range(size))

class MyCustomSignupForm(SignupForm):
	referal = forms.CharField(max_length=8, required=False)
	def save(self, request):
		# Ensure you call the parent class's save.
		# .save() returns a User object. 
		user = super(MyCustomSignupForm, self).save(request)
		referals_code= self.cleaned_data['referal']
		if referals_code is not "":
			refered = CustomUser.objects.get(referal_code=referals_code)
			refered.referal_point +=10
			refered.save()
		refer = random_string_generator()
		users = CustomUser.objects.all()
		for use in users:
			if use.referal_code == refer:
				refer = random_string_generator()

		custom = CustomUser.objects.get(id=user.id)
		custom.referal_code= refer
		custom.save()
		# Add your own processing here.
		# You must re
		return user