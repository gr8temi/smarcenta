# Generated by Django 2.0.7 on 2019-09-17 08:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Jobs', '0016_order_workload'),
    ]

    operations = [
        migrations.AlterField(
            model_name='order',
            name='deadlines',
            field=models.CharField(max_length=50),
        ),
    ]
