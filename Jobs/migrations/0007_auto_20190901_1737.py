# Generated by Django 2.0.7 on 2019-09-01 16:37

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('Jobs', '0006_subcategory'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='subcategory',
            name='pricing',
        ),
        migrations.RemoveField(
            model_name='subcategory',
            name='pricing_currency',
        ),
    ]
