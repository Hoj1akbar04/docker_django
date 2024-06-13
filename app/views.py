from django.shortcuts import render
from django.views import View
from .models import Product


class ProductsView(View):
    def get(self, request):
        products = Product.objects.all()
        return render(request, 'products.html', {'products': products})