# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-11-30 20:16
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('post', '0003_auto_20171130_1641'),
    ]

    operations = [
        migrations.CreateModel(
            name='Point',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('lat', models.FloatField(verbose_name='latitude')),
                ('long', models.FloatField(verbose_name='longitude')),
            ],
        ),
        migrations.CreateModel(
            name='Polyline',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('color', models.TextField(verbose_name='color')),
                ('name', models.TextField(verbose_name='name')),
                ('listory', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='post.Post')),
            ],
        ),
        migrations.AddField(
            model_name='point',
            name='line',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='post.Polyline', verbose_name='line'),
        ),
    ]
