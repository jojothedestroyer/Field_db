# Generated by Django 4.2.1 on 2024-05-16 15:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gcna_data', '0022_mace_dispatched_mace_purchase_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='mace_purchase',
            name='Delivery_advice_num',
        ),
        migrations.RemoveField(
            model_name='mace_purchase',
            name='Vehicle_number',
        ),
        migrations.AddField(
            model_name='mace_dispatched',
            name='Delivery_advice_num',
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
        migrations.AddField(
            model_name='mace_dispatched',
            name='Vehicle_number',
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
    ]
