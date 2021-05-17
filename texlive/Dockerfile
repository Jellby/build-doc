FROM phusion/baseimage:focal-1.0.0

# Update system and install
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends imagemagick poppler-utils perl-modules-5.30 libperl5.30 && \
    apt-get clean

# Install TexLive
RUN apt-get install -y --no-install-recommends wget && \
    wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz && \
    mkdir install-tl && \
    tar xvf install-tl-unx.tar.gz -C install-tl --strip-components=1 && \
    cd install-tl && \
    echo i | ./install-tl && \
    apt-get purge -y --auto-remove wget && \
    cd .. && \
    rm -r install-tl*

# Set up PATH
RUN export TLPATH=`ls -d /usr/local/texlive/20*/bin/x86_64-linux` && \
    ln -s $TLPATH /texlive
ENV PATH $PATH:/texlive
