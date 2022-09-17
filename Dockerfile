FROM python:3.6

RUN mkdir -p /opt/services/djangoapp/src
WORKDIR /opt/services/djangoapp/src

RUN pip install gunicorn django

COPY . /opt/services/djangoapp/src

EXPOSE 8000

CMD ["gunicorn", "--chdir", "hello", "--bind", ":8000", "django_docker.wsgi:application"]