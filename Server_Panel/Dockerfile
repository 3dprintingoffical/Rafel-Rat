FROM php:8.2-apache

# Enable .htaccess support and mod_rewrite
RUN a2enmod rewrite

# Copy only the public folder contents to the web root
COPY Server_Panel/public/ /var/www/html/

# Copy the private folder somewhere safe inside the container
COPY Server_Panel/private/ /var/www/private/

# Set working directory to web root
WORKDIR /var/www/html/

# (Optional) Set permissions
RUN chown -R www-data:www-data /var/www
