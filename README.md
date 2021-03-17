# 🚀  Stack Automação VPS WordPress na DigitalOcean com Terraform e Ansible

Infraestrutura como código (IaC) é uma realidade atualmente, e vem para ajudar a acelerar os processos na criação e configuração de ambientes de infraestrutura. Quando unimos o Terraform(automacao infra) com Ansible(automacao configuracoes), temos uma solução perfeita! Podemos criar ambientes de hospedagem de forma rápida e fácil. 


## Objetivo da Stack

O objetivo dessa stack é automatizar tudo, desde a criação do servidor, configuração do servidor e também configuração do DNS na plataforma da DigitalOcean. 


# Arquitetura da Stack

A imagem abaixo representa como está arquitetada esta Stack de automação.

![alt text]()


## Requisitos

A Stack está funcional seguindo os requisitos abaixo:
* Chave API DigitalOcean
* Domínio apontado para o DNS da DigitalOcean
* Terraform na máquina local


## Preparando o Ambiente (Seu Computador)

Para executar a Stack você vai precisar executar os passos abaixo. "Desconsidere caso já tenha feito algum passo".
#### 1) Download do pacote Terraform
Faça o download do pacote referente ao sistema operacional que você utiliza.
* Vídeo Instalação Windows/Linux: https://www.youtube.com/watch?v=bSrV1Dr8py8
* Download: https://www.terraform.io/downloads.html


#### 2) Download da Stack
Você pode realizar o download da Stack através do link:

* https://github.com/alejunio/terraform-ansible-wordpress-digitalocean/archive/main.zip


## Configurações na Stack

Após realizar o download do repositório, recomendo utilizar algum editor como o Notepad++, VSCode ou algum de sua preferência para configurar a Stack.

### Configuracoes Infraestrutura

Você deve realizar configuracoes nos arquivos abaixo:

* main.tf

No campo de chave SSH, configure o caminho da sua chave SSH e/ou o nome da chave que você configurou. Recomendo inserir a chave no diretório (SSH).


* variable.tf

No arquivo variable.tf você vai configurar a chave de API da DigitalOcean, e o domínio do site que você quer configurar.

Tutorial criação API Key DigitalOcean: https://www.digitalocean.com/docs/apis-clis/api/create-personal-access-token

