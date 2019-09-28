from django.shortcuts import render
from Jobs import models as jo
from . import models as ac
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
        "order":order,
        "users":users,
        "categories":categories,
        "sub_cat":sub_cat
    }


    return render(request,template, context)

def load_order(request):
	template="home/load_order.html"
	order = jo.Order.objects.all()
	context={
		"order":order,
	}
	return render(request,template, context)


def load_admin_order(request):
	template="home/load_admin_order.html"
	order = jo.Order.objects.all()
	context={
		"order":order,
	}
	return render(request,template, context)