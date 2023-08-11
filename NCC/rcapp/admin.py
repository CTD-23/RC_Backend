from django.contrib import admin
from .models import CorrectCode
# Register your models here.


class CorrectCodeAdmin (admin.ModelAdmin):
    list_display = ("question","correct_code","language")
admin.site.register(CorrectCode,CorrectCodeAdmin)