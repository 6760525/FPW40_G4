from django.shortcuts import render

def hello_page(request):
   return render(request, 'hello_page.html', {})