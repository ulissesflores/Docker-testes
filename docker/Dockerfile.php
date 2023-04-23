FROM php:7.4.33-apache

# Instalar extensões PHP necessárias
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copiar configuração personalizada para o Apache
COPY ./my_project.conf /etc/apache2/sites-available/my_project.conf
RUN a2ensite my_project.conf \
    && a2dissite 000-default.conf \
    && a2enmod rewrite
