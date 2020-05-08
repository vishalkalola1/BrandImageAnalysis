from django.urls import path
from . import views
urlpatterns = [
    path('', views.home,name='home'),
    path('login',views.login,name='login'),
    path('register',views.register,name='register'),
    path('uploadImage',views.uploadImage,name='uploadImage'),
    path('contactus',views.contactus,name='contactus'),
    path('forgotpassword',views.forgotpassword,name='forgotpassword'),
    path('^activate/(?P<uidb64>[0-9A-Za-z_\-]+)/(?P<token>[0-9A-Za-z]{1,13}-[0-9A-Za-z]{1,20})/$',
        views.activate, name='activate')
]