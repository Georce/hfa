#Hfa-New Adtracker
#Ver 1.0

FROM ubuntu:12.04

MAINTAINER smoak.wu@hypers.com

RUN apt-get update && apt-get install -y libcurl4-gnutls-dev python-django-celery python-mysqldb python-pip python-pycurl libxml2-dev python-dev python-Imaging nginx && rm -rf /var/cache/apt/archives/*.deb

RUN pip install django==1.6.1 xlrd==0.9.2 xlwt==0.7.5 py4j==0.8 fpconst==0.7.2 pycurl==7.19.0.2 uwsgi pyDes rsa redis==2.4.5 flup==1.0.2 SOAPpy PyXML

CMD ["service nginx start && uwsgi -x /home/hfa/new_adtracker/uwsgi.xml"]
