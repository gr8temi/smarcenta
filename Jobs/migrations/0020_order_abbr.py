# Generated by Django 2.1.5 on 2019-09-21 20:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Jobs', '0019_stage'),
    ]

    operations = [
        migrations.AddField(
            model_name='order',
            name='abbr',
            field=models.CharField(default='abc', max_length=50),
        ),
    ]
