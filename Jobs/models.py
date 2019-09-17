from django.db import models
from Accounts import models as acct
from ckeditor.fields import RichTextField
from djmoney.models.fields import MoneyField
# Create your models here.

class Deadline(models.Model):
    deadline = models.CharField(max_length=20)
    price = MoneyField(decimal_places=2, max_digits=8,default_currency="NGN",default=0.00)
    category=models.ForeignKey("subcategory", on_delete=models.CASCADE)

    def __str__(self):
        return self.deadline + " "+ self.category.name 
    

class Jobs(models.Model):
    job_title = models.CharField(max_length=50)
    company = models.ForeignKey(acct.Finder, on_delete=models.CASCADE)
    category = models.ForeignKey(acct.Categories, on_delete=models.CASCADE)
    payment = models.IntegerField(default=100) 
    description = RichTextField(null=True)
    def __str__(self):
        return self.job_title

class subcategory(models.Model):
    name = models.CharField(max_length=50)
    category = models.ForeignKey(acct.Categories,on_delete=models.CASCADE)
    pricing = MoneyField(decimal_places=2, max_digits=8,default_currency="NGN",default=0.00)
    def __str__(self):
        return self.name

class Order(models.Model):
    title = models.CharField(max_length=50)
    name = models.CharField( max_length=50)
    category = models.CharField( max_length=50)
    sub_cat = models.CharField( max_length=50)
    deadlines =models.CharField( max_length=50)
    total = MoneyField(decimal_places=2, max_digits=8,default_currency="NGN",default=0.00)
    email = models.EmailField( max_length=254)
    phone = models.CharField(max_length=50)
    reference = models.CharField( max_length=50)
    description = RichTextField(null=True)

    def __str__(self):
        """Unicode representation of Order."""
        pass


class Workload(models.Model):
    """Model definition for Workload."""
    project_id = models.ForeignKey("Order", on_delete=models.CASCADE)
    status_code = models.IntegerField()
    project_manager=models.CharField( max_length=50)
    project_handler=models.CharField( max_length=50)

    def __str__(self):
        """Unicode representation of Workload."""
        pass
