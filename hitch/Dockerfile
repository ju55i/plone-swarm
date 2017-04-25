FROM centos:centos7

RUN yum -y update && \
    yum install -y epel-release && \
    yum -y install hitch && \
    yum clean all

WORKDIR /etc/hitch
RUN openssl req -subj "/CN=domain.com/O=My Company Name LTD./C=US" -new -newkey rsa:2048 -days 365 -nodes -x509 -keyout server.key -out server.crt
RUN cat server.key server.crt > server.pem
USER hitch
CMD hitch -f [*]:8443 -b [varnish]:6086 --write-proxy server.pem
EXPOSE 8443

