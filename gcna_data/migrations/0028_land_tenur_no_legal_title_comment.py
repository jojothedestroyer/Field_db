# Generated by Django 4.2.1 on 2024-06-15 19:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gcna_data', '0027_rename_parish_farmer_info_address_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='land_tenur',
            name='No_Legal_Title_comment',
            field=models.CharField(max_length=50, null=True),
        ),
    ]
