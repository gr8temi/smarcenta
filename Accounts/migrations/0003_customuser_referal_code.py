# Generated by Django 2.1.5 on 2019-09-21 13:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Accounts', '0002_categories_about'),
    ]

    operations = [
        migrations.AddField(
            model_name='customuser',
            name='referal_code',
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
    ]
