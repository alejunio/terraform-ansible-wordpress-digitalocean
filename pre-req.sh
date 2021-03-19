#!/bin/bash 
#
# pre-req.sh - Pre configuração de servidor com Ansible
#
# Site       : https://alejunio.cloud
# Autor      : Alex Junio <contato@alejunio.cloud>
# 
# ---------------------------------------------------------
# Esse script vai instalar tudo o que a stack precisa para
# executar o ansible e as tasks corretamente. 
# ---------------------------------------------------------
# 
# Histórico:
#
#   v1.0 17/03/2021, Alex Junio.
#      - Versão inicial do Script
#



# Install Ansible
apt update 
apt-get install python3 git unzip htop -y
apt install software-properties-common -y
apt-add-repository --yes --update ppa:ansible/ansible
apt install ansible -y 

# Configuracao Host Ansible
cd /etc/ansible/ && rm hosts && wget https://raw.githubusercontent.com/alejunio/ansible-wordpress/main/ansible/hosts

# Criacao diretorio Tasks
mkdir /home/ansible

# Instalacao Certbot SSL
snap install core
snap install --classic certbot
ln -s /snap/bin/certbot /usr/bin/certbot



