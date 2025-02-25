FROM php:8.1-fpm

WORKDIR /var/www

COPY . .

RUN apt-get update && apt-get install -y \
    unzip \
    git \
    libpq-dev \
    libzip-dev \
    && docker-php-ext-install zip pdo pdo_mysql

CMD ["php-fpm"]
