#!/bin/bash

# Attend que MySQL soit prêt
until mysqladmin ping -hmysql -P3306 --silent; do
  echo 'Waiting for MySQL to be ready...'
  sleep 1
done

# Exécute les migrations
php artisan migrate --force

# Démarrage du serveur Apache
apache2-foreground
