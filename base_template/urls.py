from django.conf.urls import url, include
from django.views.generic import TemplateView
from django.contrib import admin

urlpatterns = [
    url(r'^$', TemplateView.as_view(template_name="home.html")),
    url(r'^accounts/', include('registration.backends.default.urls')),
    url(r'^admin/', admin.site.urls),
]
