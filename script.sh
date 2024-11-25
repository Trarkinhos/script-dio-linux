#!/bin/bash

# Criação dos diretórios:
echo "Criando os diretórios..."

mkdir publico adm ven sec

# Criação dos grupos:
echo "Criando os grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criação dos usuários:
echo "Criando os usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd josefina -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC

useradd maria -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN

useradd joao -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC

# Permissionamento de diretórios
echo "Permitindo a todos os usuários a pasta /publico"
chmod 777 /publico

echo "Declarando proprietário e grupo dos diretórios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Definindo o permissionamento dos diretórios"
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

# Terminal
echo "Fim do script..."