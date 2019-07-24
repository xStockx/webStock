FROM ubuntu:latest
FROM nginx:latest
RUN apt-get update \
    && apt-get install curl vim -y \
    && curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get install -y nodejs
RUN mkdir /usr/share/nginx/webStock \
    && cd /usr/share/nginx/webStock \
    && ls -l
ADD . /usr/share/nginx/webStock
WORKDIR /usr/share/nginx/webStock
RUN npm install
CMD ["node", "index.js"]