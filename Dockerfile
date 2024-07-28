FROM nginx:stable-alpine
COPY ./nginx/app.conf /etc/nginx/conf.d/
COPY ./src/ /var/www/app/
