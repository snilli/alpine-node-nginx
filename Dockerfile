FROM nginx:stable-alpine

RUN apk add --no-cache --update-cache nodejs nodejs-npm \
    && apk add --no-cache --update-cache yarn \
    && echo "NodeJS Version:" "$(node -v)" \
    && echo "NPM Version:" "$(npm -v)" \
    && echo "Yarn Version:" "$(yarn -v)"