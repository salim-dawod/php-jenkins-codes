#!/bin/bash

sed -i 's/Listen 80/Listen 8888/g' /etc/apache2/ports.conf

cat > /etc/apache2/sites-available/000-default.conf << EOF
<VirtualHost *:8888>
        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/html/php-jenkins-codes
        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>
EOF

/usr/sbin/apachectl -D FOREGROUND
