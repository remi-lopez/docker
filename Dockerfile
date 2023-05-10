FROM php:5.6-apache

# Copie des fichiers de l'application dans le conteneur
COPY . /var/www/html/

# Installation des extensions PHP nécessaires
RUN docker-php-ext-install mysqli pdo_mysql

# Configuration du serveur Apache
RUN a2enmod rewrite
RUN chown -R www-data:www-data /var/www/html/

# Exposition du port 80 pour le serveur Apache
EXPOSE 80