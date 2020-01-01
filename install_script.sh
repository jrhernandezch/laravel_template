#!/bin/bash
echo "---> 1 - Instal·lació laravel Admin"
sudo git clone https://github.com/jrhernandezch/laravel_admin.git /var/www/laravel_admin
sudo chmod 777 -R /var/www/laravel_admin/storage
sudo chmod 777 -R /var/www/laravel_admin/bootstrap/cache
echo "Completada"

echo "---> 2 - Instal·lació laravel Template"
sudo git clone https://github.com/jrhernandezch/laravel_template.git /var/www/laravel_template
sudo chmod 777 -R /var/www/laravel_template/storage
sudo chmod 777 -R /var/www/laravel_template/bootstrap/cache
sudo chmod 777 -Rf /var/www/laravel_template/public/img
echo "Completada"

echo "---> 3 - Instal·lació Docker"
sudo apt-get update
sudo apt-get remove docker docker-engine docker.io
sudo apt install docker.io
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo systemctl start docker
sudo systemctl enable docker
echo "Completada"

echo "---> 4 - Instal·lació Laradock a Laravel template"
sudo git clone https://github.com/Laradock/laradock.git /var/www/laradock
echo "Completada"

echo "---> 5 - Instal·lació recursos laradock"
sudo cp /var/www/laravel_template/laradock_resources/.env /var/www/laradock/.env
sudo cp /var/www/laravel_template/laradock_resources/my.cnf /var/www/laradock/mysql/my.cnf
sudo cp /var/www/laravel_template/laradock_resources/createdb.sql /var/www/laradock/mysql/docker-entrypoint-initdb.d/createdb.sql
sudo cp /var/www/laravel_template/laradock_resources/jhernandezch_base_de_dades.sql /var/www/laradock/mysql/docker-entrypoint-initdb.d/jhernandezch_base_de_dades.sql
sudo cp /var/www/laravel_template/laradock_resources/laravel_admin.conf /var/www/laradock/apache2/sites/laravel_admin.conf
sudo cp /var/www/laravel_template/laradock_resources/laravel_template.conf /var/www/laradock/apache2/sites/laravel_template.conf
echo "Completada"

echo "---> Instal·lació finalitzada. Inicialitzant contenidors Docker"
cd /var/www/laradock
sudo docker-compose up -d apache2
sudo docker-compose up -d mysql
sudo docker-compose up -d phpmyadmin
sudo docker-compose up -d workspace
sudo docker exec -i laradock_mysql_1 mysql -uroot -proot laravel_business < /var/www/laradock/mysql/docker-entrypoint-initdb.d/jhernandezch_base_de_dades.sql
sudo docker ps
