FROM phusion/baseimage

RUN apt-get upgrade && \
    apt-get update -y && \
    apt-get install -y --no-install-recommends wget perl-modules-5.22 && \
    apt-get install -y --no-install-recommends imagemagick poppler-utils && \
    apt-get clean && \
    wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz && \
    tar xvf install-tl-unx.tar.gz && \
    cd install-tl-* && \
    ./install-tl && \
    cd .. && \
    rm -rf install-tl-*
