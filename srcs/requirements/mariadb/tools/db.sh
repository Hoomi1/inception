chown -R mysql:mysql /var/lib/mysql

service mysql start

mysql -u root --skip-password -e "CREATE DATABASE $NAME_DB;" 
mysql -u root --skip-password -e "CREATE USER '$USER_DB'@'%' IDENTIFIED BY '$PASSWORD_USER_DB';"
mysql -u root --skip-password -e "GRANT ALL PRIVILEGES ON $NAME_DB.* TO $USER_DB@'%';"
mysql -u root --skip-password -e "FLUSH PRIVILEGES;"

mysqladmin -u root password $PASSWORD_ROOT_DB

service mysql stop

usr/bin/mysqld_safe