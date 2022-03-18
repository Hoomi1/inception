#!/bin/bash
mkdir -p run/php
mkdir -p var/www
mkdir -p var/www/html

while ! mysql -h ${WP_HOST} -u $USER_DB -p$PASSWORD_USER_DB $NAME_DB -e "SELECT 'OK' AS status;"; do
	sleep 5
done



if [ ! -f /var/www/html/wordpress/wp-config.php ]; then
cp -R usr/src/wordpress /var/www/html/
wp core config --path=/var/www/html/wordpress --dbhost=${WP_HOST} --dbname=${NAME_DB} --dbuser=${USER_DB} --dbpass=${PASSWORD_USER_DB} --allow-root
wp core install --path=/var/www/html/wordpress --url=${WP_URL} --admin_user=${WP_ADMIN_N} --admin_password=${WP_ADMIN_PASS} --admin_email=${WP_ADMIN_EM} --title=${WP_TITLE} --allow-root
wp user create --path=/var/www/html/wordpress --allow-root ${WP_USER_N} ${WP_USER_EM} --role=author --user_pass=${WP_USER_PAS}
fi

/usr/sbin/php-fpm7.3 --nodaemonize