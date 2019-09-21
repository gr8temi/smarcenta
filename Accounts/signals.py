import random
import string
from allauth.account.signals import user_signed_up
from django.dispatch import receiver
from Accounts.models import CustomUser

@receiver(user_signed_up)
def user_signed_up_(request, user, **kwargs):
    user = CustomUser.objects.get(id=user.id)
    user.referal_code="abc"

    user.save()
    
def random_string_generator(size=10, chars=string.ascii_lowercase + string.digits):
	return ''.join(random.choice(chars) for _ in range(size))