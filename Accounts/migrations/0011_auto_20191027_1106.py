# Generated by Django 2.2.5 on 2019-10-27 10:06

import ckeditor.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('Accounts', '0010_terms'),
    ]

    operations = [
        migrations.AlterField(
            model_name='terms',
            name='terms_condition',
            field=ckeditor.fields.RichTextField(),
        ),
    ]
