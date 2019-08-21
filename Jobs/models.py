from django.db import models
from Accounts import models as acct
# Create your models here.

class Jobs(models.Model):
    job_title = models.CharField(max_length=50)
    company = models.ForeignKey(acct.Finder, on_delete=models.CASCADE)
    category = models.ForeignKey(acct.Categories, on_delete=models.CASCADE)
    
    description = models.TextField()

    def __str__(self):
        return self.job_title
    
