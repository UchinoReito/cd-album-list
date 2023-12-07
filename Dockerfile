FROM python:3.10

COPY . /opt/album
WORKDIR /opt/album

RUN pip install -r requirements.txt
ENV DJANGO_APP=album.apps:AppConfig

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
