chown -R mysql:mysql /var/lib/mysql

if [ ! -d "/var/lib/mysql/$NAME_DB" ]; then
service mysql start
mysql -u root -e "CREATE DATABASE IF NOT EXISTS $NAME_DB DEFAULT CHARACTER SET utf8;;" 
mysql -u root -e "CREATE USER '$USER_DB'@'%' IDENTIFIED BY '$PASSWORD_USER_DB';"
mysql -u root -e "GRANT ALL PRIVILEGES ON $NAME_DB.* TO $USER_DB@'%';"
mysql -u root -e "FLUSH PRIVILEGES;"

mysqladmin -u root password $PASSWORD_ROOT_DB

service mysql stop
fi
usr/bin/mysqld_safe