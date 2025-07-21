FROM php:8.1-apache

# PHP extension-ları quraşdır
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Apache mod rewrite aktiv et
RUN a2enmod rewrite

# Layihəni konteynerə kopyala
COPY . /var/www/html/

# Apache default portu açıqdır
EXPOSE 80

# Apache ön planda işə düşür
CMD ["apache2-foreground"]

