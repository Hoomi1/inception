# mkdir -p etc/php/7.3

# while()


wp core config download --path=usr/src/wordpress --dbname=$(NAME_DB) --dbuser=$(USER_DB) --dbpass=$(PASSWORD_USER_DB) --allow-root
wp core install download --path=usr/src/wordpress --url=$(WP_URL) --admin_name=$(WP_ADMIN_N) --admin_password=$(WP_ADMIN_PASS) --admin_email=$(WP_ADMIN_EM) --title=$(WP_TITLE) --allow-root
wp user create download --path=usr/src/wordpress $(WP_USER_N) $(WP_USER_EM) --role=author --user_pass=$(WP_USER_PAS) --allow-root

/usr/sbin/php-fpm7.3 --nodaemonize