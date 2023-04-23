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

# Install MySQL Server
RUN apt-get install -y mysql-server && \
    service mysql start && \
    mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY ''; FLUSH PRIVILEGES;"

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
