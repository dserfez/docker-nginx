FROM alpine:3.4

RUN apk --update add nginx && \
  rm -rf /var/cache/apk/* /tmp/*

ADD nginx.conf /etc/nginx/nginx.conf

USER nginx

EXPOSE 80 443

VOLUME ["/etc/nginx/conf.d", "/var/lib/nginx/html"]

CMD nginx
