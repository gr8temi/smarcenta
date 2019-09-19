from django.shortcuts import render,HttpResponse
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

def track(request):
	if request.method== "GET":
		template="home/track_home.html"
		return render(request,template)
	elif request.method =="POST":
		template="home/track_page.html"
		refer=str(request.POST.get("reference")).rstrip()
		job = jo.Order.objects.get(reference=refer)
		# sub_cats= job.sub_cat[slice()]
		sub_cat = jo.subcategory.objects.get(name=job.sub_cat)
		stages = jo.stage.objects.filter(category=sub_cat)

		context={
			"stages":stages,
			"job":job,
		}
		return render(request,template,context)

	