FROM php:8.2-apache

# Enable URL rewriting
RUN a2enmod rewrite

# Copy app contents into Apache root (point to public/)
COPY public/ /var/www/html/

# Set working directory
WORKDIR /var/www/html/

# Optional: Set proper file permissions
RUN chown -R www-data:www-data /var/www/html
