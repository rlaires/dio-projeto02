#/bin/bash

#Atualização do Ubuntu
echo "Atualizando Ubuntu"
apt update
apt upgrade -y
echo "Ubuntu atualizado"
echo ""

#Instalação do Apache e Unzip
echo "Instalando Apache"
apt install apache2 -y
echo "Apache instalado"
echo ""

echo "Instalando Unzip"
apt install unzip -y
echo "Unzip instalado"
echo ""

#Baixar arquivo zip da aplicação
echo "Baixando aplicação no diretório 'tmp'"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo "Aplicação baixada"
echo ""

#Descompactar aplicação na pasta do Apache
echo "Descompactando aplicação no diretório do Apache"
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
echo "Aplicação descompactada"
echo ""
