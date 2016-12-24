FROM phusion/baseimage

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends wget perl-modules-5.22 libperl5.22 && \
    apt-get install -y --no-install-recommends imagemagick poppler-utils && \
    apt-get clean && \
    wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz && \
    mkdir install-tl && \
    tar xvf install-tl-unx.tar.gz -C install-tl --strip-components=1 && \
    cd install-tl && \
    echo i | ./install-tl && \
    cd .. && \
    rm -r install-tl*
