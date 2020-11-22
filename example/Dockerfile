
FROM me/alpine-nginx-nodejs:latest

ENV APP_ROOT /home/me
ENV SRC_DIR ./node_modules ./public ./src
ENV NGINX_STATIC /usr/share/nginx/html/
ENV NGINX_CONF /etc/nginx/

WORKDIR $APP_ROOT
COPY . $APP_ROOT

RUN node -v \
    && npm -v \
    && yarn -v \
    && yarn install --verbose \
    && yarn build \
    && cp -r nginx/* $NGINX_CONF \
    && cp -r build/* $NGINX_STATIC \
    && rm -rf $SRC_DIR

EXPOSE 80
RUN nginx -t

CMD ["nginx","-g","daemon off;"]