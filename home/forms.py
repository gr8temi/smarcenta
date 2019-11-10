from django import forms
from Accounts import models as Amodels
from django_simple_coupons import models as coup

class CouponForm(forms.ModelForm):

    class Meta:
        model = Amodels.Coupon
        fields = ("coupon","expiry_date","amount",)
 
class Coupons(forms.ModelForm):

    class Meta:
        model = coup.Coupon
        fields = ("code",)

class ValidityForm(forms.ModelForm):
    class Meta:
        model = coup.ValidityRule

        fields=("expiration_date","is_active",)

class MaxUseForm(forms.ModelForm):

    class Meta:
        model = coup.MaxUsesRule
        fields = ("max_uses","uses_per_user")
class DiscountForm(forms.ModelForm):

    class Meta:
        model = coup.Discount
        fields = ("value", "is_percentage")

class CouponUsers(forms.ModelForm):

    class Meta:
        model = coup.AllowedUsersRule
        fields = ("users","all_users",)