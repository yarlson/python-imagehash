FROM python:3.6.5-jessie

MAINTAINER Yar Kravtsov <yarlson@gmail.com>

RUN export DEBIAN_FRONTEND=noninteractive ;\
    apt-get update ;\
    apt-get install libblas-dev liblapack-dev cython gfortran gfortran-4.9 libgfortran-4.9-dev -y ;\
    pip install --upgrade pip ;\
    pip install --no-cache-dir numpy==1.14.3 pandas==0.22.0 ;\
    pip install --no-cache-dir scipy==1.1.0 imagehash==4.0 ;\
    pip install --no-cache-dir gevent==1.1.2 gunicorn==19.3.0 ;\
    apt-get clean ;\
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

