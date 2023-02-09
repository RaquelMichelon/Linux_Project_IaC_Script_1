#!/bin/bash

echo "Creating directories..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating users group..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating users and inserting them into groups..."

useradd carlos -c "Invited User" -m -s /bin/bash -p $(openssl passwd Pass123) -G GRP_ADM
useradd maria -c "Invited User" -m -s /bin/bash -p $(openssl passwd Pass123) -G GRP_ADM
useradd joao -c "Invited User" -m -s /bin/bash -p $(openssl passwd Pass123) -G GRP_ADM

useradd debora -c "Invited User" -m -s /bin/bash -p $(openssl passwd Pass123) -G GRP_VEN
useradd serbastiana -c "Invited User" -m -s /bin/bash -p $(openssl passwd Pass123) -G GRP_VEN
useradd roberto -c "Invited User" -m -s /bin/bash -p $(openssl passwd Pass123) -G GRP_VEN

useradd josefina -c "Invited User" -m -s /bin/bash -p $(openssl passwd Pass123) -G GRP_SEC
useradd amanda -c "Invited User" -m -s /bin/bash -p $(openssl passwd Pass123) -G GRP_SEC
useradd rogerio -c "Invited User" -m -s /bin/bash -p $(openssl passwd Pass123) -G GRP_SEC

echo "Specifing group's directories and permissions..."

chown root:GRP_ADM /adm
chown root:GRP_SALES /ven
chown root:GRP_SECURITY /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Ending..."
