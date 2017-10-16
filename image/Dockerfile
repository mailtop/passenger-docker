FROM phusion/baseimage:0.9.22
MAINTAINER Rodrigo de Avila <rodrigo.avila@mailtop.com.br>

ADD . /pd_build
RUN /pd_build/install.sh
RUN gem update --system && \
    gem install bundler && \
    bundle config --global silence_root_warning 1

CMD ["/sbin/my_init"]
EXPOSE 80 443
