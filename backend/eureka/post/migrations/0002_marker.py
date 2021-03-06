# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-11-28 10:45
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('post', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Marker',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('lat', models.FloatField(verbose_name='latitude')),
                ('long', models.FloatField(verbose_name='longitude')),
                ('color', models.TextField(verbose_name='color')),
                ('mag', models.FloatField(verbose_name='magnitude')),
                ('name', models.TextField(verbose_name='name')),
                ('listory', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='post.Post')),
            ],
        ),
    ]
