FROM php:7.4-apache

RUN apt-get update \
    && apt-get install -y phpmyadmin

# Enable PHP extensions required by phpMyAdmin
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Symbolic link to make phpMyAdmin web interface accessible
RUN ln -s /usr/share/phpmyadmin /var/www/html/phpmyadmin
