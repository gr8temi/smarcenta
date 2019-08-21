from django.shortcuts import render
from Accounts import models as Acct
from Jobs import models as jo
# Create your views here.
def Home(request):
	template = "home/home.html"
	jobs = jo.Jobs.objects.all()
	context = {
		'jobs':jobs,
	}
	return render(request,template,context)

