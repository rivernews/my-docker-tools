#!/bin/bash

echo INFO: start entrypoint script...

# see django setup: https://realpython.com/django-setup/
django-admin startproject test_django

cd test_django

python manage.py runserver 0.0.0.0:8001
