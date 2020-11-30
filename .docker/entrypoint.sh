#!/bin/bash

cp .env.example .env

composer install
php artisan key:generate
php artisan cache:clear
chmod -R 777 storage

php-fpm