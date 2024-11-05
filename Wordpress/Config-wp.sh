
#!/bin/bash

# Actualiza el sistema
sudo apt-get update
sudo apt-get upgrade -y

# Instala Apache, MySQL y los módulos de PHP necesarios
sudo apt-get install -y apache2 mysql-server php libapache2-mod-php php-mysql

# Habilita PHP en Apache
sudo a2enmod php8.3

# Reinicia Apache
sudo systemctl restart apache2

# Descarga y configura WordPress
cd /tmp
wget https://wordpress.org/latest.tar.gz
tar -xzvf latest.tar.gz
sudo mv wordpress /var/www/html/
sudo chown -R www-data:www-data /var/www/html/wordpress
sudo chmod -R 755 /var/www/html/wordpress

# Crea la base de datos y usuario en MySQL
sudo mysql -u root -p <<MYSQL_SCRIPT
CREATE DATABASE hector_wp_2;
CREATE USER 'hector_wp_2'@'localhost' IDENTIFIED BY 'Admin1234';
GRANT ALL PRIVILEGES ON hector_wp_2.* TO 'hector_wp_2'@'localhost';
FLUSH PRIVILEGES;
EXIT;
MYSQL_SCRIPT

# Configura la base de datos en WordPress
cd /var/www/html/wordpress
cp wp-config-sample.php wp-config.php
sed -i "s/database_name_here/hector_wp_2/" wp-config.php
sed -i "s/username_here/hector_wp_2/" wp-config.php
sed -i "s/password_here/Admin1234/" wp-config.php

echo "¡WordPress ha sido instalado y configurado correctamente!"
