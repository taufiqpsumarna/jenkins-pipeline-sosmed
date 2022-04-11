FROM php:7.4.28-apache-buster
WORKDIR /var/www/html/
COPY . .
RUN docker-php-ext-install pdo_mysql
EXPOSE 80
