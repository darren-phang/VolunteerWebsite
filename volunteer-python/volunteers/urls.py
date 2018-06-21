from django.conf.urls import url

from volunteer import settings
from volunteers import views

urlpatterns = [
    # Home page
    url(r'^$', views.index, name='index'),
    url(r'index.html$', views.index, name='index'),
    # Show all topics.
    url(r'^topics/$', views.topics, name='topics'),

]
