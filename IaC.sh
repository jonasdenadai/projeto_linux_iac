#!/bin/bash

echo "Início das tratativas"

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Ajustando permissões de diretórios..."

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo  "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Alterando proprietários dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Criando usuários e atribuindo aos respectivos grupos..."

useradd carlos -m -s /bin/bash -p $(openssl passwd 123mudar) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd 123mudar) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd 123mudar) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd 123mudar) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd 123mudar) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd 123mudar) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd 123mudar) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd 123mudar) -G GRP_SEC
useradd roberto -m -s /bin/bash -p $(openssl passwd 123mudar) -G GRP_SEC

echo "Fim das tratativas"
