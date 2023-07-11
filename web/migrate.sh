#!/bin/bash
SUPER_USER_EMAIL=${DJANGO_SUPERUSER_EMAIL:-"aleksbogdanov292@gmail.com"}
cd /app/ 
/opt/venv/bin/python manage.py migrate --noinput
/opt/venv/bin/python manage.py createsuperuser --email $SUPER_USER_EMAIL --noinput || true