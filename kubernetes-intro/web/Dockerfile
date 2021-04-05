FROM nginx:latest

WORKDIR /app

COPY nginx/index.html /app
COPY nginx/static.conf /etc/nginx/conf.d

RUN usermod -u 1001 nginx

EXPOSE 8000