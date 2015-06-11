#!/bin/bash
echo "Instalando Apache"
apt-get update
apt-get install -y apache2
mv ./index.html /var/www/html/index.html
/etc/init.d/apache2 restart
done

