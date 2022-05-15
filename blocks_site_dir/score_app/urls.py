from django.urls import path
from score_app import views

app_name = 'score_app'

urlpatterns = [
    path('', views.index, name='index'),
]