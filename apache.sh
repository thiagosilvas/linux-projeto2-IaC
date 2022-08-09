#!/bin/bash
echo "Atualizando repositorio"
sudo apt-get update

echo "Atualizando pacotes.."

sudo apt-get upgrade -y

echo "Instalando apache2"

echo "Instalando apache 2"
sudo apt-get install apache2 -y

echo "Instalando unzip"
sudo apt-get install unzip -y


echo "Baixando arquivos do site no github"

cd /tmp
wget https://github.com/thiagosiIva/meuportfolio/archive/heads/master.zip

unzip master.zip

echo "Copiando arquivos para servidor apache"

cd /var/www/html


cp -R /tmp/meuportfolio-heads-master/* /var/www/html


