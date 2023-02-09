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

echo "Creating users..."

useradd carlos -m -s /bin/bash -p $(openssl passwd Pass123) -G GRP_ADM
useradd sarah -m -s /bin/bash -p $(openssl passwd Pass123) -G GRP_ADM
useradd regina -m -s /bin/bash -p $(openssl passwd Pass123) -G GRP_ADM

useradd maria -m -s /bin/bash -p $(openssl passwd Pass123) -G GRP_SALES
useradd joao -m -s /bin/bash -p $(openssl passwd Pass123) -G GRP_SALES
useradd eduardo -m -s /bin/bash -p $(openssl passwd Pass123) -G GRP_SALES

useradd mara -m -s /bin/bash -p $(openssl passwd Pass123) -G GRP_SECURITY
useradd luzia -m -s /bin/bash -p $(openssl passwd Pass123) -G GRP_SECURITY
useradd valmir -m -s /bin/bash -p $(openssl passwd Pass123) -G GRP_SECURITY

echo "Specifing directories permissions..."

chown root:GRP_ADM /adm
chown root:GRP_SALES /sales
chown root:GRP_SECURITY /security

chmod 770 /adm
chmod 770 /sales
chmod 770 /security
chmod 777 /public

echo "Ending..."
