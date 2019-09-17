from django.shortcuts import render
from Accounts import models as Acct
from django.contrib.auth.decorators import login_required
from Jobs import models as jo
# Create your views here.
def Home(request):
	template = "home/home.html"
	jobs = jo.Jobs.objects.all()
	context = {
		'jobs':jobs,
	}
	return render(request,template,context)

@login_required(login_url='/account/login')
def dashboard(request):
    template="home/dashboard.html"
    return render(request,template)
