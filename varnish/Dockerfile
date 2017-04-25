FROM centos:centos7

RUN yum -y update && \
    yum install -y https://repo.varnish-cache.org/redhat/varnish-4.1.el7.rpm epel-release && \
    yum -y install varnish

ADD start.sh /start.sh
ADD default.vcl /etc/varnish/default.vcl

ENV VCL_CONFIG      /etc/varnish/default.vcl
ENV CACHE_SIZE      64m
ENV VARNISHD_PARAMS -p default_ttl=3600 -p default_grace=3600

CMD /start.sh
EXPOSE 80

