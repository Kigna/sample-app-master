# Utilisez une image PHP avec Apache
FROM php:7-apache

# Installez les dépendances nécessaires, y compris Composer
RUN apt-get update && apt-get install -y \
    git \
    zip \
    unzip \
    && rm -rf /var/lib/apt/lists/*
# Install PDO Mysql
RUN docker-php-ext-install pdo_mysql


# Téléchargez et installez Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Définissez le répertoire de travail
WORKDIR /var/www/html



# # Utilise une image officielle PHP avec Apache
# FROM php:7.4-apache

# # Installe les dépendances nécessaires
# RUN apt-get update && \
#     apt-get install -y \
#         libzip-dev \
#         unzip

# # Active les extensions PHP nécessaires pour Laravel
# RUN docker-php-ext-install pdo_mysql zip

# # Copie le script d'entrée dans le conteneur
# COPY script.sh /usr/local/bin/
# RUN chmod +x /usr/local/bin/script.sh

# # Utilise le script d'entrée comme point d'entrée
# ENTRYPOINT ["script.sh"]

# # Active le module Apache mod_rewrite
# RUN a2enmod rewrite

# # Définit le répertoire de travail
# WORKDIR /var/www/html

# # Expose le port 80 pour le serveur web
# EXPOSE 80




# # Utilise une image officielle PHP avec Apache
# FROM php:7.4-apache

# # Installe les dépendances nécessaires
# RUN apt-get update && \
#     apt-get install -y \
#         libzip-dev \
#         unzip

# RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# # Active les extensions PHP nécessaires pour Laravel
# RUN docker-php-ext-install pdo_mysql zip

# # Active le module Apache mod_rewrite
# RUN a2enmod rewrite

# # Installe le client MySQL (pour les commandes en ligne)
# RUN apt-get install -y default-mysql-client

# RUN apt-get update && apt-get install -y mysql-client

# # RUN service mysql start   

# # Définit le répertoire de travail
# WORKDIR /var/www/html

# # Copie le projet Laravel local dans le conteneur
# COPY . /var/www/html

# # Installe les dépendances du projet Laravel
# RUN composer install

# # Copie le fichier de configuration d'environnement
# COPY .env.example .env

# # Génère la clé d'application Laravel
# RUN php artisan key:generate

# # Assure-toi que le serveur web a les bonnes autorisations
# RUN chown -R www-data:www-data storage bootstrap/cache



# # Expose le port 80 pour le serveur web
# EXPOSE 80

# # Attend que MySQL soit prêt avant d'exécuter les migrations
# # CMD ["bash", "-c", "service mysql start && sleep 10 && mysql -u root -e \"CREATE DATABASE laravel;\" && php artisan migrate"]
# # # Commande par défaut pour démarrer le serveur Apache
# CMD ["apache2-foreground"]
