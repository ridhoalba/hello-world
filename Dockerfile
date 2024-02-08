# Menggunakan image PHP dengan Apache sebagai server web
FROM php:apache

WORKDIR /var/www/html
# Menyalin file PHP dan HTML ke dalam container
COPY . /var/www/html/

RUN a2enmod rewrite
COPY apache-config.conf /etc/apache2/sites-available/000-default.conf
# Port yang akan digunakan oleh server Apache
EXPOSE 80
