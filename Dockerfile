FROM php:8.2-apache

# Enable .htaccess and mod_rewrite
RUN a2enmod rewrite

# Public files go to Apache web root
COPY Server_Panel/public/ /var/www/html/

# Private files copied somewhere else (not web accessible)
COPY Server_Panel/private/ /var/www/private/

# Optional: If unzip.php is needed
COPY unzip.php /var/www/html/unzip.php

# Permissions (optional)
RUN chown -R www-data:www-data /var/www

WORKDIR /var/www/html/
