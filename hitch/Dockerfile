FROM alpine
RUN apk add libressl --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/main/ && \
    apk add hitch --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ && \
    rm -f /var/cache/apk/*

RUN adduser -D hitch
WORKDIR /etc/hitch
RUN openssl req -subj "/CN=plone.traefik/O=Kopla/C=FI" -new -newkey rsa:2048 -days 365 -nodes -x509 -keyout server.key -out server.crt
RUN cat server.key server.crt > server.pem
USER hitch
CMD hitch -f [*]:8443 -b [varnish]:6086 --write-proxy server.pem
EXPOSE 8443

