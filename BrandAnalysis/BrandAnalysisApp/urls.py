from django.urls import path
from . import views
urlpatterns = [
    path('', views.home,name='home'),
    path('login',views.login,name='login'),
    path('register',views.register,name='register'),
    path('uploadImage/<int:id>',views.uploadImage,name='uploadImage'),
    path('contactus',views.contactus,name='contactus'),
    path('forgotpassword',views.forgotpassword,name='forgotpassword'),
    path('activate/<int:id>/<str:token>', views.activate, name='activate'),
    path('adminHome', views.adminHome,name='adminHome'),
    path('editcompany/<int:id>', views.editcompany,name='editcompany'),
    path('viewcompany/<int:id>', views.viewcompany,name='viewcompany'),
    path('deletecompany/<int:id>', views.delete,name='deletecompany'),
    path('logout', views.logout,name='logout')
]