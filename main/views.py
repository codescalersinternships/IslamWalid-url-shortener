from django.shortcuts import render
from django.http import HttpResponse
import pyshorteners

def shorten(request):
    if request.POST:
        shortener = pyshorteners.Shortener()
        shortened_url = shortener.chilpit.short(request.POST['url'])
        return render(request, 'form.html', {'shortened_url': shortened_url})
    return render(request, 'form.html')