FROM phusion/baseimage

RUN apt-get upgrade && \
    apt-get update -y && \
    apt-get install -y --no-install-recommends gcc gfortran make cmake latexmk latex2html git && \
    apt-get install -y --no-install-recommends python-pip python-sphinx && \
    apt-get clean && \
    pip install --upgrade pip setuptools && \
    pip install --upgrade sphinxcontrib-bibtex
