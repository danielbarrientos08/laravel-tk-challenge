FROM php:7.4-fpm


RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    default-mysql-client \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libmagickwand-dev \
    libzip-dev \
    libonig-dev \
    locales \
    zip \
    jpegoptim optipng pngquant gifsicle \
    && pecl install imagick

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Installing extensions
RUN docker-php-ext-install pdo_mysql mbstring zip exif pcntl bcmath opcache
RUN docker-php-ext-enable imagick

# Installing composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer