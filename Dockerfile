# 파이썬 설치된 이미지 가져옴
FROM python:3.6.7

# 환경변수 세팅
ENV PYTHONUNBUFFERED 1


RUN apt-get -y update
RUN apt-get -y install vim

RUN mkdir /srv/docker-django
ADD . /srv/docker-django

WORKDIR /srv/docker-django

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

#EXPOSE 8000
#CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]