from django.shortcuts import render, HttpResponse
from Jobs import models as jo
from . import models as ac
from django.core.mail import EmailMessage, send_mail, EmailMultiAlternatives
from django.template.loader import render_to_string
from django.views.generic.edit import UpdateView
from django.core.files.storage import FileSystemStorage
from .forms import ImageFileUploadForm
from django.http import JsonResponse
from django.urls import reverse_lazy
from home import models as homes
# Create your views here.


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


def load_order(request):
    template = "home/load_order.html"
    order = jo.Order.objects.all()
    context = {
        "order": order,
    }
    return render(request, template, context)


def load_admin_order(request):
    template = "home/load_admin_order.html"
    order = jo.Order.objects.all()
    context = {
        "order": order,
    }
    return render(request, template, context)


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


# def setting(request):

# 	template= "account/settings.html"
# 	user_id = request.GET.get("user")
# 	user_info = ac.CustomUser.objects.get(id=user_id)
# 	form = ImageFileUploadForm()
# 	context ={
# 		"user_info":user_info,
# 		"form":form
# 	}
# 	return render(request,template, context)

# def edit_view(request):
# 	if request.method == 'POST':
# 		form = ImageFileUploadForm(request.POST, request.FILES, instance=request.user)
# 		if form.is_valid():
# 			print(form.cleaned_data["profile_picture"])
# 			form.save()
# 			return JsonResponse({'error': False, 'message': "Successfully Updated"})
# 		else:
# 			return JsonResponse({'error': True, 'errors': form.errors})
