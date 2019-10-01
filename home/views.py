from django.shortcuts import render,HttpResponse
from Accounts import models as Acct
from django.contrib.auth.decorators import login_required
from Jobs import models as jo
from django.template.loader import render_to_string
from django.core.mail import EmailMessage, send_mail, EmailMultiAlternatives
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
	jobs = jo.Order.objects.filter(user_id=request.user.id)
	acronyms = ["".join([ leter[0] for leter in  job.title.split(" ")]) for job in jobs]
	counter = jo.Order.objects.filter(user_id=request.user.id).count()
	category = Acct.Categories.objects.all()
	context ={
		"jobs":jobs,
		"acronyms":acronyms,
		"counter":counter,
		"category":category,
			}
	return render(request,template,context)

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

def trackin(request):
	if request.method== "GET":
		template="home/tracking.html"
		refer=str(request.GET.get("reference")).rstrip()
		job = jo.Order.objects.get(reference=refer)
		sub_cat = jo.subcategory.objects.get(name=job.sub_cat)
		stages = jo.stage.objects.filter(category=sub_cat)
		managers = Acct.project_managers.objects.all()
		handlers = Acct.project_handlers.objects.all()

		context={
			"stages":stages,
			"job":job,
			"managers":managers,
			"handlers":handlers
		}
		return render(request,template,context)	
def user_track(request):
	if request.method== "GET":
		template="home/user_track.html"
		refer=str(request.GET.get("reference")).rstrip()
		job = jo.Order.objects.get(reference=refer)
		sub_cat = jo.subcategory.objects.get(name=job.sub_cat)
		stages = jo.stage.objects.filter(category=sub_cat)
		managers = Acct.project_managers.objects.all()
		handlers = Acct.project_handlers.objects.all()

		context={
			"stages":stages,
			"job":job,
			"managers":managers,
			"handlers":handlers
		}
		return render(request,template,context)	

def verify(request):
	reference = request.GET.get("reference")
	status = request.GET.get("stage")
	order = jo.Order.objects.get(reference=reference)
	stage = jo.stage.objects.get(stage=status, category__name=order.sub_cat)

	mail_subject = 'Job Status'
	message = render_to_string('home/job_status.txt', {            
               "order":order,
			   "stage":stage
        
            })
	to_email = [
            order.email,
            ]
	msg_html = render_to_string('home/job_status.html', {            
            "order":order,
			"stage":stage
            })
	send_mail(mail_subject, message, "Smartcentanigeria@gmail.com", to_email, fail_silently=False, html_message=msg_html,) 
	order.status+=1
	order.save()
	return HttpResponse(True)
def users(request):
	template = "home/users.html"
	users = Acct.CustomUser.objects.filter(is_staff=False) 
	orders = jo.Order.objects.all()
	user_list=[]
	count=0
	for user in users:
		order = jo.Order.objects.filter(user_id=user.id).count()
		pending= jo.Order.objects.filter(user_id=user.id, status__lte=6).count()
		complete=jo.Order.objects.filter(user_id=user.id, status__gte=6).count()
		user_list.append({"username":user.username,
		"id":user.id,"is_active":user.is_active, "email":user.email, "order":order, "pending":pending,"complete":complete, "referal":user.referal_point})

	print(user_list)
	
	users = Acct.CustomUser.objects.filter(is_staff=False)
	context = {
	"users":users,
	"user_list":user_list,

	}
	return render(request,template,context)



	


