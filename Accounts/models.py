from django.contrib.auth.models import AbstractUser
from django.db import models
from djmoney.models.fields import MoneyField
from ckeditor.fields import RichTextField

class CustomUser(AbstractUser):
	# username=models.CharField(max_length=50, default='User', unique=True)
	is_active=models.BooleanField(default=True)
	address = models.CharField(max_length=150, default="lagos")
	phone = models.CharField(max_length=150, default="08000012345")
	# Candidate = models.BooleanField(default=True)
	referal_code= models.CharField(null=True, blank=True, max_length=50)
	referal_point =models.PositiveIntegerField(default=0)
	reward = MoneyField(decimal_places=2, max_digits=8,default_currency="NGN",default=0.00)
	profile_picture = models.ImageField( upload_to="profile", default="empty.png")



	def __str__(self):
		return self.email
class project_managers(models.Model):
	name = models.CharField(max_length=50)
	email = models.EmailField( max_length=254)
	availability = models.BooleanField(default=True)
	def __str__(self):
	 return self.name


class project_handlers(models.Model):
	name = models.CharField(max_length=50)
	email = models.EmailField( max_length=254)
	availability = models.BooleanField(default=True)
	def __str__(self):
	 return self.name


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
	about  = models.TextField(default="info about category")
	image = models.ImageField(default="me.png", upload_to="categories/")
	def __str__(self):
		return self.category

class Terms(models.Model):
	name= models.CharField(max_length=50, default="Terms and condition")
	terms_condition = RichTextField()

	def __str__(self):
		return self.name

class Coupon(models.Model):
	coupon= models.CharField( max_length=50)
	expiry_date = models.DateField(auto_now=False, auto_now_add=False)
	amount= MoneyField(decimal_places=2, max_digits=8,default_currency="NGN",default=0.00)

	def __str__(self):
		return self.coupon
