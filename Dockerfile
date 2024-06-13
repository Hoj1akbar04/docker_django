
FROM python:3.12

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


WORKDIR /app


COPY . /app/

RUN pip install -r requirements.txt


RUN /bin/sh -c python manage.py migrate

