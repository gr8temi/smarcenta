from django.contrib.auth.models import AbstractUser
from django.db import models

class CustomUser(AbstractUser):
	# username=models.CharField(max_length=50, default='User', unique=True)
	is_active=models.BooleanField(default=True)
	address = models.CharField(max_length=150, default="lagos")
	phone = models.CharField(max_length=150, default="08000012345")
	Candidate = models.BooleanField(default=True)


	def __str__(self):
		return self.first_name + " "+ self.last_name

class Candidate(models.Model):
	user = models.OneToOneField('CustomUser', on_delete=models.CASCADE)
	picture = models.ImageField(upload_to="profile", default="profile/users.png")
	age = models.IntegerField()
	availability = models.BooleanField(default=True)
	category = models.ForeignKey('Categories', on_delete=models.CASCADE) 
	charge_per_hour = models.IntegerField()
	def __str__(self):
		return self.user.first_name + " "+ self.user.last_name
	
class Finder(models.Model):
	user = models.OneToOneField('CustomUser', null=True, on_delete=models.CASCADE)
	company_name = models.CharField(default="xyz", max_length=50)


	def __str__(self):
		return self.company_name
	
class Categories(models.Model):

	category = models.CharField(max_length=50)

	def __str__(self):
		return self.category
	