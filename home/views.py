from django.shortcuts import render, HttpResponse, redirect
from Accounts import models as Acct
from django.contrib.auth.decorators import login_required
from Jobs import models as jo
from django.template.loader import render_to_string
from django.core.mail import EmailMessage, send_mail, EmailMultiAlternatives
from Jobs import forms as j_forms
from .forms import CouponForm, Coupons, ValidityForm, MaxUseForm, DiscountForm, CouponUsers
from django.http import JsonResponse
from django_simple_coupons import models as co_models
from home import models as homes
from django.db.models import Count


# Create your views here.


def home(request):
    template = "home/home.html"
    cate_top = Acct.Categories.objects.all()
    jobs = jo.Jobs.objects.all()
    info = homes.CompanyInfo.objects.all()
    terms = Acct.Terms.objects.get(id=1)
    testimony = homes.Testimonials.objects.all()
    context = {
        'jobs': jobs,
        "cate_top": cate_top,
        'info': info,
        'terms': terms,
        'testimony': testimony
    }
    return render(request, template, context)


def website(request):
    template = "home/website_home.html"

    return render(request, template)


@login_required(login_url='/account/login')
def dashboard(request):
    if request.user.is_staff == True:
        return redirect("admin_page")
    template = "home/dashboard.html"
    jobs = jo.Order.objects.filter(user_id=request.user.id)
    acronyms = ["".join([leter[0] for leter in job.title.split(" ")])
                for job in jobs]
    counter = jo.Order.objects.filter(user_id=request.user.id).count()
    category = Acct.Categories.objects.all()
    context = {
        "jobs": jobs,
        "acronyms": acronyms,
        "counter": counter,
        "category": category,
    }
    return render(request, template, context)


def track(request):
    if request.method == "GET":
        template = "home/track_home.html"
        return render(request, template)
    elif request.method == "POST":
        template = "home/track_page.html"
        refer = str(request.POST.get("reference")).rstrip()
        job = jo.Order.objects.get(reference=refer)
        sub_cat = jo.subcategory.objects.get(name="Research")
        stages = jo.stage.objects.filter(category=sub_cat)

        context = {
            "stages": stages,
            "job": job,
        }
        return render(request, template, context)


def trackin(request):
    if request.method == "GET":
        template = "home/tracking.html"
        refer = str(request.GET.get("reference")).rstrip()
        job = jo.Order.objects.get(reference=refer)
        sub_cat = jo.subcategory.objects.get(name="Research")
        stages = jo.stage.objects.filter(category=sub_cat)
        managers = Acct.project_managers.objects.all()
        handlers = Acct.project_handlers.objects.all()

        context = {
            "stages": stages,
            "job": job,
            "managers": managers,
            "handlers": handlers
        }
        return render(request, template, context)


def user_track(request):
    if request.method == "GET":
        template = "home/user_track.html"
        refer = str(request.GET.get("reference")).rstrip()
        if refer == "quote":
            return render(request, "account/404.html")
        job = jo.Order.objects.filter(reference=refer).first()
        sub_cat = jo.subcategory.objects.get(name="Research")
        stages = jo.stage.objects.filter(category=sub_cat)
        managers = Acct.project_managers.objects.all()
        handlers = Acct.project_handlers.objects.all()

        context = {
            "stages": stages,
            "job": job,
            "managers": managers,
            "handlers": handlers
        }
        return render(request, template, context)


def verify(request):
    reference = request.GET.get("reference")
    status = request.GET.get("stage")
    order = jo.Order.objects.get(reference=reference)
    stage = jo.stage.objects.get(stage=status, category__name=order.sub_cat)
    info = homes.CompanyInfo.objects.get(id=1)
    company_email = info.email
    mail_subject = 'Job Status'
    message = render_to_string('home/job_status.txt', {
        "order": order,
        "stage": stage

    })
    to_email = [
        order.email,
    ]
    msg_html = render_to_string('home/job_status.html', {
        "order": order,
        "stage": stage
    })
    send_mail(mail_subject, message, company_email,
              to_email, fail_silently=False, html_message=msg_html, )
    order.status += 1
    order.save()
    return HttpResponse(True)


def users(request):
    template = "home/users.html"
    users = Acct.CustomUser.objects.filter(is_staff=False)
    orders = jo.Order.objects.all()
    user_list = []
    count = 0
    for user in users:
        order = jo.Order.objects.filter(user_id=user.id).count()
        pending = jo.Order.objects.filter(
            user_id=user.id, status__lte=6).count()
        complete = jo.Order.objects.filter(
            user_id=user.id, status__gte=6).count()
        user_list.append({"username": user.username,
                          "id": user.id, "is_active": user.is_active, "email": user.email, "order": order,
                          "pending": pending, "complete": complete, "referal": user.referal_point})
    users = Acct.CustomUser.objects.filter(is_staff=False)
    context = {
        "users": users,
        "user_list": user_list,

    }
    return render(request, template, context)


def categories(request):
    template = "home/categories.html"
    categories = Acct.Categories.objects.all()
    subcategories = jo.subcategory.objects.all()

    context = {
        "subcategories": subcategories,
        "categories": categories
    }
    return render(request, template, context)


def category(request, pk):
    template = "home/category.html"
    category = Acct.Categories.objects.get(pk=pk)
    sub_cat = jo.subcategory.objects.filter(category__pk=pk)
    cate_top = Acct.Categories.objects.all()
    info = homes.CompanyInfo.objects.all()
    jobform = j_forms.JobForm()
    form = j_forms.CustomizeForm()
    terms = Acct.Terms.objects.get(id=1)
    faqs = homes.FAQ.objects.all()
    try:
        cate = request.session['category']
    except KeyError:
        cate = ""
    try:
        subc = request.session['subcategory']
    except KeyError:
        subc = ""
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
    context = {
        "category": category,
        "sub_cat": sub_cat,
        "cate_top": cate_top,
        "jobform": jobform,
        "form": form,
        "cate": cate,
        "subc": subc,
        "tota": tota,
        "amount": amount,
        "dead_price": dead_price,
        "sub_price": sub_price,
        "deadlines": deadlines,
        "info": info,
        "terms": terms,
        "faqs": faqs
    }
    return render(request, template, context)


def cat_main(request):
    template = "home/main_cat.html"
    categories = Acct.Categories.objects.annotate(sub_count=Count('subcategory'))
    packages = jo.Package.objects.all()
    context = {
        "categories": categories,
        "packages": packages
    }
    return render(request, template, context)


def coupon(request):
    if request.method == 'POST':
        form = CouponForm(request.POST)
        coup = Coupons(request.POST)
        validity = ValidityForm(request.POST)
        maxUse = MaxUseForm(request.POST)
        discount = DiscountForm(request.POST)
        Cusers = CouponUsers(request.POST)
        if coup.is_valid() and validity.is_valid() and maxUse.is_valid() and discount.is_valid() and Cusers.is_valid():
            validity.save()
            maxUse.save()
            Cusers.save()
            discount.save()
            valid = co_models.ValidityRule.objects.filter(
                expiration_date=validity.cleaned_data["expiration_date"]).first()
            maxi = co_models.MaxUsesRule.objects.filter(max_uses=maxUse.cleaned_data["max_uses"]).first()
            maxi.is_active = True
            maxi.save()
            coup_user = co_models.AllowedUsersRule.objects.filter(all_users=Cusers.cleaned_data["all_users"]).first()
            co_models.Ruleset.objects.create(
                max_uses=maxi,
                validity=valid,
                allowed_users=coup_user
            )
            rules = co_models.Ruleset.objects.filter(max_uses__id=maxi.id, validity__id=valid.id,
                                                     allowed_users__id=coup_user.id).first()
            disc = co_models.Discount.objects.filter(value=discount.cleaned_data["value"],
                                                     is_percentage=discount.cleaned_data["is_percentage"]).first()
            co_models.Coupon.objects.create(
                code=coup.cleaned_data["code"],
                ruleset=rules,
                discount=disc
            )
            return JsonResponse({'error': False, 'message': "Successfully Updated"})
        else:

            return JsonResponse({'error': True, 'errors': form.errors})
    if request.method == 'GET':
        template = "home/promotion.html"
        form = CouponForm()
        coup = Coupons()
        validity = ValidityForm()
        maxUse = MaxUseForm()
        discount = DiscountForm()
        Cusers = CouponUsers()
        context = {
            "form": form,
            "coup": coup,
            "validity": validity,
            "maxUse": maxUse,
            "discount": discount,
            "Cusers": Cusers
        }
        return render(request, template, context)
