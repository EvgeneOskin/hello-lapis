FROM openresty/openresty:alpine

RUN mkdir /app
ADD app.lua mime.types nginx.conf /app

CMD nginx -c /app/nginx.conf
