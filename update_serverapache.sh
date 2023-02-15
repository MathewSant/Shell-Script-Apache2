#!/bin/bash

echo "Atualizando o Sistema..."

apt update
apt upgrade -y

echo "Instalando Apache"

apt install apache2
cd /var/www/html
rm -r index.html
apt install unzip

echo "Configurando o servidor"
cd /tmp/
mkdir servidor_web
cd servidor_web
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cp /tmp/servidor_web/linux-site-dio-main/* /var/www/html -r

echo "Finalizado!"
