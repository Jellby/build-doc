FROM phusion/baseimage

RUN apt-get upgrade && \
    apt-get update -y && \
    apt-get install -y --no-install-recommends gcc gfortran make cmake latexmk latex2html && \
    apt-get install -y --no-install-recommends python-sphinx && \
    apt-get clean
    pip install sphinxcontrib-bibtex
