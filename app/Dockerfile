FROM ubuntu:latest
RUN apt-get update \
    && apt-get install curl vim -y \
    && curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get install -y nodejs
COPY . /usr/share/nginx/webStock
WORKDIR /usr/share/nginx/webStock
RUN npm install 
EXPOSE 8080
CMD ["node","index.js"]

