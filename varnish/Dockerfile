FROM alpine
RUN apk add varnish --update-cache && rm -f /var/cache/apk/*

ADD start.sh /start.sh
ADD default.vcl /etc/varnish/default.vcl

ENV VCL_CONFIG      /etc/varnish/default.vcl
ENV CACHE_SIZE      64m
ENV VARNISHD_PARAMS -p default_ttl=3600 -p default_grace=3600

CMD /start.sh
EXPOSE 80 6086
