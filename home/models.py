from django.db import models
from ckeditor.fields import RichTextField
# Create your models here.
class CompanyInfo(models.Model):
    name = models.CharField(max_length=50)
    address = models.CharField(max_length=150)
    telephone = models.CharField(max_length=11)
    email = models.EmailField( max_length=254)
    def __str__(self):
        return self.name

class FAQ(models.Model):
    """Model definition for FAQ."""
    
    # TODO: Define fields here
    faq = models.CharField(max_length=100)
    answer = RichTextField(null=True)
    tag = models.CharField (max_length=3, default = "abc")

    class Meta:
        """Meta definition for FAQ."""

        verbose_name = 'FAQ'
        verbose_name_plural = 'FAQs'

    def __str__(self):
        """Unicode representation of FAQ."""
        return self.faq

class Testimonials(models.Model):
    """Model definition for Archives."""
    name = models.CharField( max_length=50, blank=True)
    image = models.ImageField(upload_to="customers/",blank=True)
    company = models.CharField(max_length=50, blank=True)
    testimony = RichTextField()
    def __str__(self):
        """Unicode representation of FAQ."""
        if len(self.name)>1:
            return self.name
        else:
            return self.company
         

    # TODO: Define fields here



