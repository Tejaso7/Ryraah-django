# api/index.py
import os
import sys

# Add your Django project to the Python path
sys.path.append(os.path.join(os.path.dirname(__file__), ".."))

# Set the Django settings module
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "jewelry.settings")

# Import the WSGI application
from django.core.wsgi import get_wsgi_application
app = get_wsgi_application()
