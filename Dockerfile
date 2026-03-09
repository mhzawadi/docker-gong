FROM alpine:3.23
LABEL org.opencontainers.image.authors="matt@horwood.biz"

# Install required deb packages
RUN apk update && apk upgrade && \
    apk add gnupg nginx curl git \
    && mkdir -p /var/www/html/ \
    && mkdir -p /run/nginx \
    && rm -f /var/cache/apk/*;

WORKDIR /var/www/html
COPY . .
RUN mv nginx_site.conf /etc/nginx/http.d/default.conf; \
    ln -s /dev/stdout /var/log/php-fpm.www.log; \
    ln -s /dev/stdout /var/log/php-fpm.log; \
    ln -s /dev/stdout /var/log/nginx/access.log;

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]

## Health Check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s \
  CMD curl -f http://127.0.0.1:8080 || exit 1
