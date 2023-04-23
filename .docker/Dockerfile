# Use an official PHP runtime as a parent image
FROM php:7.4.33-apache

# Install system dependencies
RUN apt-get update && apt-get install -y \
    sudo \
    git \
    curl \
    wget \
    vim \
    nano \
    zip \
    unzip \
    openssl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    && docker-php-ext-install \
    pdo_mysql \
    mbstring \
    exif \
    pcntl \
    bcmath \
    gd \
    && a2enmod rewrite

# install Mysql
RUN apt-get update && apt-get install -y \
    && docker-php-ext-install \
    pdo_mysql \
    && apt-get install -y \
    default-mysql-client \
    default-mysql-server \
    && systemctl start mysql \
    && apt-get clean


# Set working directory
WORKDIR /var/www/html

# Copy the application files to the container
COPY ./html/ .

# Set permissions for Apache user
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

# Expose port 80 to the Docker host
EXPOSE 80

# Start the Apache web server in the foreground
CMD ["apache2-foreground"]
