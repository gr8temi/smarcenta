from django.contrib.admin.views.decorators import staff_member_required
from django.core.mail import send_mail
from django.shortcuts import render, HttpResponse
from django.template.loader import render_to_string
from django.urls import reverse_lazy
from django.views.generic.edit import UpdateView

from Jobs import models as jo
from home import models as homes
from . import models as ac


# Create your views here.

@staff_member_required
def admin_page(request):
    template = "home/admin_page.html"
    order = jo.Order.objects.all().count()
    users = ac.CustomUser.objects.all().count()
    # users_count=users.count()
    categories = ac.Categories.objects.all().count()
    # cat_count = categories.count()
    sub_cat = jo.subcategory.objects.all().count()

    context = {
        "order": order,
        "users": users,
        "categories": categories,
        "sub_cat": sub_cat
    }

    return render(request, template, context)

@staff_member_required
def load_order(request):
    template = "home/load_order.html"
    order = jo.Order.objects.all()
    context = {
        "order": order,
    }
    return render(request, template, context)

@staff_member_required
def load_admin_order(request):
    template = "home/load_admin_order.html"
    order = jo.Order.objects.all()
    context = {
        "order": order,
    }
    return render(request, template, context)

@staff_member_required
def suspend_user(request):
    user_id = request.GET.get("user_id")
    reason = request.GET.get("reason")
    status = request.GET.get("active_user")
    info = homes.CompanyInfo.objects.get(id=1)
    company_email = info.email
    user = ac.CustomUser.objects.get(id=user_id)
    if status == "True":
        mail_subject = 'Suspension Notice'
        message = render_to_string('account/suspend.txt', {
            "user": user,
            "reason": reason,
        })
        to_email = [
            user.email,
        ]
        msg_html = render_to_string('account/suspend.html', {
            "user": user,
            "reason": reason
        })
        send_mail(mail_subject, message, company_email,
                  to_email, fail_silently=False, html_message=msg_html,)
        user.is_active = False
        user.save()
        return HttpResponse(True)
    if status == "False":
        mail_subject = 'Activation Notice'
        message = render_to_string('account/unsuspend.txt', {
            "user": user,
            "reason": reason,
        })
        to_email = [
            user.email,
        ]
        msg_html = render_to_string('account/unsuspend.html', {
            "user": user,
            "reason": reason
        })
        send_mail(mail_subject, message, company_email,
                  to_email, fail_silently=False, html_message=msg_html,)
        user.is_active = True
        user.save()

        return HttpResponse(True)


class UserUpdateView(UpdateView):
    model = ac.CustomUser
    fields = ['email','last_name','first_name','phone', 'address', 'profile_picture']
    template_name = "account/settings.html"
    success_url= reverse_lazy('dashboard')
