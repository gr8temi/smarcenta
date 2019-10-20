from django.shortcuts import render,HttpResponse
from django.contrib.auth.decorators import login_required
from . import forms
from Accounts import models as acct
from . import models as jom
from django.template.loader import render_to_string
from django.core.mail import EmailMessage, send_mail, EmailMultiAlternatives
from django.http import JsonResponse
# Create your views here.
def JobCreate(request):
    template = 'Job/create.html'
    jobform = forms.JobForm()
    form = forms.CustomizeForm()
    category = acct.Categories.objects.all()
    # user = acct.Finder.objects.get(user=request.user)

    try:
        cate = request.session['category']
    except KeyError:
        cate=""
    try:
        subc = request.session['subcategory'] 
    except KeyError:
        subc=""
    try:
        sub_price = request.session['sub_pricing']
    except KeyError:
        sub_price = ""
    try:
        tota = request.session['total']
    except KeyError:
        tota = 0
    try:
        deadlines = request.session['deadlines']
    except KeyError:
        deadlines = ""
    try:
        dead_price = request.session['dead_amount']
    except KeyError:
        dead_price = 0
    try:
        amount = request.session['amount']
    except KeyError:
        amount = 0
    context ={
        "jobform":jobform,
        # "user":user,
        "category":category,
        "cate":cate,
        "subc":subc,
        "tota":tota,
        "amount":amount,
        "dead_price":dead_price,
        "sub_price":sub_price,
        "deadlines":deadlines,
        "form":form
    }
    return render(request,template,context)
def CatChange(request):
    template = "Job/catechange.html"
    cate = request.GET.get("category")
    category= acct.Categories.objects.get(id=cate)
    subcat = jom.subcategory.objects.filter(category=cate)
    request.session['category']=category.category
    print(request.session['category'])
    request.session['total']=0
    # print(deadlines)
    context = {
        "subcat":subcat,
    }

    return render(request,template, context)

def Deadline(request):
    template = "Job/deadline.html"
    cate = request.GET.get("sub_cat")
    print (cate)
    category = jom.subcategory.objects.get(id=cate)
    dedline = jom.Deadline.objects.filter(category__id=cate)
    min_date = category.min_date
    request.session['subcategory']=category.name
    request.session['sub_pricing']=str(category.pricing)
    csl = float(category.pricing.amount)
    request.session['sub_price']=csl
    context = {
        "dedline":dedline,
        "min_date":min_date,
        "cate_id":category.id
    }       
    return render(request,template, context)

def dead_line_price(request):
    dea = request.GET.get("deadline")
    deadlines = jom.Deadline.objects.get(id=dea)
    amount = float(deadlines.price.amount)
    dead_amount = deadlines.price
    request.session["dead_amount"]=str(dead_amount)
    request.session["amount"]=amount
    request.session["deadlines"]=str(deadlines.deadline)
    total = request.session['sub_price']+ amount
    request.session['total']= total  

    return HttpResponse(status=204)    
def payin(request):
    title = request.GET.get("title")
    email = request.GET.get("email")
    total= float(request.GET.get("total"))/100
    category=request.GET.get("category")
    sub_cat= request.GET.get("sub_cat_sum")
    deadline = request.GET.get("dead_sum")
    phone = request.GET.get("phone")
    reference= request.GET.get("reference")
    name = request.GET.get("name")
    description = request.GET.get("description")
    user_id = request.GET.get("id")
    print(category)
    acronyms ="".join([ leter[0] for leter in title.split(" ")]) 
    if user_id =="None":
        user_id=0

    jom.Order.objects.create(
        title=title,
        abbr=acronyms,
        name = name,
        category=category,
        sub_cat=sub_cat,
        deadlines=deadline,
        total=total,
        email=email,
        phone=phone,
        reference=reference,
        description=description,
        user_id=user_id,
    )
    
    mail_subject = 'Order successfully placed'
    message = render_to_string('home/order_mail.txt', {            
			'name': name,
			'Job_title':title,
			'reference':reference,
		})
    to_email = [
		email,
		]
    msg_html = render_to_string('home/order_mail.html', {            
			'name': name,
			'Job_title':title,
			'reference':reference,
		})
    send_mail(mail_subject, message, 'adamstemii@gmail.com', to_email, fail_silently=False, html_message=msg_html,
 )

    # print (description)
    
    return HttpResponse(user_id)

def workload(request):
    # if request.method == "GET":
    #     reference = request.GET.get("reference")
    #     stage_id = request.GET.get("stage_id")
    #     stage_info = jom.stage.objects.get(id=stage_id)
    #     return HttpResponse(stage_id)
    if request.method=="GET":
        handlers = request.GET.get("handlers")
        managers = request.GET.get("manager")
        reference = request.GET.get("cur_reference")
        handler = acct.project_handlers.objects.get(id=handlers)
        manager =acct.project_managers.objects.get(id=managers)
        project_id = jom.Order.objects.get(reference=reference)
        status = jom.stage.objects.get(stage_name="Assign Task",category__name=project_id.sub_cat)
        jom.Workload.objects.create(
            project_id=project_id,
            status_code= status.stage,
            project_manager=manager.name,
            project_handler=handler.name,
        )
        #manager's mail
        mail_subject = 'Job assigned to you'
        message = render_to_string('Job/assign_mail.txt', {            
                'name': manager.name,
                'Job':project_id,
        
            })
        to_email = [
            manager.email,
            ]
        msg_html = render_to_string('Job/assign_mail.html', {            
                'name': manager.name,
                'Job':project_id,
            })

        send_mail(mail_subject, message, 'adamstemii@gmail.com', to_email, fail_silently=False, html_message=msg_html,)
        # manager.availability=False
        # manager.save()

        #handlers Mail
        mail_subject = 'Job assigned to you'
        message = render_to_string('Job/assign_mail.txt', {            
                'name': handler.name,
                'Job':project_id,
        
            })
        to_email = [
            handler.email,
            ]
        msg_html = render_to_string('Job/assign_mail.html', {            
                'name': handler.name,
                'Job':project_id,
            })
        send_mail(mail_subject, message, manager.email, to_email, fail_silently=False, html_message=msg_html,) 
        project_id.status+=1
        project_id.save()
        # handler.availability=False
        # handler.save()       
        return HttpResponse(True)
def calendar(request):
    dea = request.GET.get("deadline")
    cate_id =request.GET.get("cate_id")
    sub_cat = jom.subcategory.objects.get(id=cate_id)
    days = int(dea) - sub_cat.min_date 
    print(sub_cat.cost_per_day.amount)
    amount = float(sub_cat.cost_per_day.amount) * float(days)
    print(amount)
    dead_amount = sub_cat.cost_per_day
    request.session["dead_amount"]=str(dead_amount)
    request.session["amount"]=amount
    request.session["deadlines"]=str(days)+" days @" 
    total = request.session['sub_price']+ amount
    request.session['total']= total
    return HttpResponse(status=204)  

def customize(request):
    if request.method == 'POST':
        form = forms.CustomizeForm(request.POST)
        if form.is_valid():
            
            email = form.cleaned_data.get('email')
            title = form.cleaned_data.get('title')
            name = form.cleaned_data.get('name')
            mail_subject = 'Order successfully placed'
            message = render_to_string('home/order_mail.txt', {            
                'name': name,
                'Job_title':title,
                })
            to_email = [
                email,
                ]
            msg_html = render_to_string('home/order_mail.html', {            
                    'name': name,
                    'Job_title':title,

                })
            send_mail(mail_subject, message, 'adamstemii@gmail.com', to_email, fail_silently=False, html_message=msg_html,)
            form.save()
            return JsonResponse({'error': False, 'message': "Upload Successful"})
        else:
            print(form.errors)
            return JsonResponse({'error': True, 'errors': form.errors})
