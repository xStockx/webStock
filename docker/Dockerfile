FROM ubuntu:latest
FROM iojs:1.8
RUN apt-get update \
    && apt-get install git vim -y 
RUN mkdir /usr/share/nginx/ \
    && cd /usr/share/nginx/ \
    && git clone https://github.com/xStockx/webStock.git \
    && cd /usr/share/nginx/webStock \
    && npm install 
WORKDIR /usr/share/nginx/webStock
CMD ["node", "index.js"]