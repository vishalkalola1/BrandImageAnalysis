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
    path('reset/<int:id>/<str:token>', views.reset, name='reset'),
    path('adminHome', views.adminHome,name='adminHome'),
    path('editcompany/<int:id>', views.editcompany,name='editcompany'),
    path('viewcompany/<int:id>', views.viewcompany,name='viewcompany'),
    path('deletecompany/<int:id>', views.delete,name='deletecompany'),
    path('report/<int:id>',views.report, name='report'),
    ###############################################################
    path('dashboard',views.dashboard, name='dashboard'),
    path('changeProfile',views.changeProfile, name='changeProfile'),
    path('changePassword',views.changePassword, name='changePassword'),
    path('help',views.help, name='help'),

    ###############################################################
    path('logout', views.logout,name='logout')
]