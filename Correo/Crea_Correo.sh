#!/bin/bash

# Instalación
sudo apt-get update
sudo apt-get install ssmtp

# Configuración de ssmtp
sudo tee /etc/ssmtp/ssmtp.conf > /dev/null <<EOT
root=hectorclaseestu@gmail.com
mailhub=smtp.gmail.com:587
AuthUser=hectorclaseestu@gmail.com
AuthPass=lgny qwsm niiy town
UseTLS=YES
UseSTARTTLS=YES
rewriteDomain=gmail.com
hostname=localhost
FromLineOverride=YES
EOT

# Configuración de revaliases
echo "root:hectorclaseestu@gmail.com:smtp.gmail.com:587" | sudo tee -a /etc/ssmtp/revaliases

# Configurar permisos
sudo chown root:mail /etc/ssmtp/ssmtp.conf
sudo chmod 640 /etc/ssmtp/ssmtp.conf

echo "Configuracion completada."
