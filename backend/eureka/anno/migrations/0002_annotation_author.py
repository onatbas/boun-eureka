# -*- coding: utf-8 -*-
# Generated by Django 1.11.5 on 2017-11-13 14:54
from __future__ import unicode_literals

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('anno', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='annotation',
            name='author',
            field=models.ForeignKey(default=None, on_delete=django.db.models.deletion.CASCADE, related_name='annos', to=settings.AUTH_USER_MODEL, verbose_name='Writer'),
            preserve_default=False,
        ),
    ]
