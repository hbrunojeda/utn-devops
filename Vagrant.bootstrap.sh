#!/bin/bash

### Aprovisionamiento de software ###
# Actualizo los paquetes de la maquina virtual
sudo apt-get updates

# Instalo un servidor web
sudo apt-get install -y apache2 


### Configuración del entorno ###

# ruta de la aplicación
APP_PATH="/var/www/devops";

# configuración servidor web
sudo mv /tmp/devops.site.conf /etc/apache2/sites-available
sudo a2ensite devops.site.conf
sudo service apache2 reload
	
