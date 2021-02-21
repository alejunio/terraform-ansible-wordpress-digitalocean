#!/bin/bash 


apt update 
apt-get install python3 git unzip htop -y
apt install software-properties-common -y
apt-add-repository --yes --update ppa:ansible/ansible
apt install ansible -y 

# Instalacao Certbot SSL
snap install core; sudo snap refresh core
snap install --classic certbot
ln -s /snap/bin/certbot /usr/bin/certbot
apt install python-certbot-nginx -y

# Configurando Lista de Servers no Ansible 
cp /home/projeto/ansible/servers /etc/ansible/servers
