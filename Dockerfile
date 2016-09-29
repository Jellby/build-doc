FROM phusion/baseimage

RUN apt-get upgrade && \
    apt-get update -y && \
    apt-get install -y --no-install-recommends cmake latex2html && \
    apt-get clean
