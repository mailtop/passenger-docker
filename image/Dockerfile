FROM phusion/baseimage:master
MAINTAINER Joao Scotto <joao.scotto@mailtop.com.br>
LABEL versao="2.7.1-2"

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y dist-upgrade && \
    rm -rf /var/lib/apt/lists/*

ADD . /pd_build
RUN /pd_build/install.sh
RUN gem update --system && \
    gem install bundler && \
    bundle config --global silence_root_warning 1

CMD ["/sbin/my_init"]
EXPOSE 80 443
