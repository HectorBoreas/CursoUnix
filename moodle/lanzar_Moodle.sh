#!/bin/bash

# Actualizar el sistema
sudo apt update && sudo apt upgrade -y

# Instalar dependencias
sudo DEBIAN_FRONTEND=noninteractive apt install -y apache2 mysql-server php libapache2-mod-php php-mysql php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip git lynx

# Crear base de datos y usuario para Moodle
sudo mysql <<MYSQL_SCRIPT
CREATE DATABASE moodle DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE USER 'moodleuser'@'localhost' IDENTIFIED BY 'Admin1234';
GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,CREATE TEMPORARY TABLES,DROP,INDEX,ALTER ON moodle.* TO 'moodleuser'@'localhost';
FLUSH PRIVILEGES;
EXIT
MYSQL_SCRIPT

# Eliminar directorio moodle si existe
sudo rm -rf /var/www/html/moodle

# Descargar Moodle usando wget (formato tgz)
sudo wget https://download.moodle.org/download.php/direct/stable405/moodle-latest-405.tgz -O /tmp/moodle-latest.tgz

# Descomprimir en el directorio web
sudo tar -xzf /tmp/moodle-latest.tgz -C /var/www/html/


# Configurar permisos
sudo chown -R www-data:www-data /var/www/html/moodle
sudo chmod -R 755 /var/www/html/moodle

# Crear directorio de datos de Moodle
sudo mkdir -p /var/moodledata
sudo chown -R www-data:www-data /var/moodledata
sudo chmod -R 777 /var/moodledata

# Configurar Apache
sudo tee /etc/apache2/sites-available/000-default.conf > /dev/null <<EOL
<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/html
    
    <Directory /var/www/html/moodle>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>

    ErrorLog \${APACHE_LOG_DIR}/error.log
    CustomLog \${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
EOL

# Habilitar módulos necesarios y reiniciar Apache
sudo a2enmod rewrite
sudo systemctl restart apache2

# Crear archivo de configuración de Moodle
sudo tee /var/www/html/moodle/config.php > /dev/null <<EOL
<?php
unset(\$CFG);
global \$CFG;
\$CFG = new stdClass();
\$CFG->dbtype    = 'mysqli';
\$CFG->dblibrary = 'native';
\$CFG->dbhost    = 'localhost';
\$CFG->dbname    = 'moodle';
\$CFG->dbuser    = 'moodleuser';
\$CFG->dbpass    = 'Admin1234';
\$CFG->prefix    = 'mdl_';
\$CFG->dboptions = array(
    'dbpersist' => false,
    'dbsocket'  => false,
    'dbport'    => '',
);
\$CFG->wwwroot   = 'http://localhost/moodle';
\$CFG->dataroot  = '/var/moodledata';
\$CFG->admin     = 'admin';
\$CFG->directorypermissions = 0777;
require_once(__DIR__ . '/lib/setup.php');
EOL

# Ajustar permisos del archivo de configuración
sudo chown www-data:www-data /var/www/html/moodle/config.php
sudo chmod 644 /var/www/html/moodle/config.php

echo "Moodle ha sido instalado y configurado."
echo "La contraseña para el usuario de la base de datos de Moodle (moodleuser) es: Admin1234"
echo "Puede acceder a Moodle usando: lynx http://localhost/moodle"

