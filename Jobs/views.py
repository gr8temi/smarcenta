from django.shortcuts import render,HttpResponse
from django.contrib.auth.decorators import login_required
from . import forms
from Accounts import models as acct
from . import models as jom
from django.core.mail import EmailMessage, send_mail, EmailMultiAlternatives
# Create your views here.
def JobCreate(request):
    template = 'Job/create.html'
    jobform = forms.JobForm()
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
        "deadlines":deadlines
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
    request.session['subcategory']=category.name
    request.session['sub_pricing']=str(category.pricing)
    csl = float(category.pricing.amount)
    request.session['sub_price']=csl
    context = {
        "dedline":dedline,
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
    if user_id =="None":
        user_id=0

    jom.Order.objects.create(
        title=title,
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
    
    # print (description)
    
    return HttpResponse(user_id)
