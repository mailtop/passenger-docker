FROM phusion/baseimage:0.10.2
LABEL maintainer="Rodrigo de Avila <rodrigo.avila@mailtop.com.br>"
LABEL versao="2.5.1.1"

ADD . /pd_build
RUN /pd_build/install.sh
RUN gem update --system && \
    gem install bundler && \
    bundle config --global silence_root_warning 1

CMD ["/sbin/my_init"]
EXPOSE 80 443
