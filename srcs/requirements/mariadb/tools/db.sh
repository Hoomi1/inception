echo "CREATE DATABASE $NAME_DB;" | mysql -u root --skip-password
echo "CREATE USER $USER_DB IDENTIFIED BY $PASSWORD_USER_DB" | mysql -u root --skip-password
echo "GRANT ALL PRIVILEGES ON $NAME_DB.* TO '$USER_DB'@'%' WITH GRANT OPTION;" | mysql -u root --skip-password
echo "FLUSH PRIVILEGES;" | mysql -u root --skip-password

mysqladmin -u root password $PASSWORD_USER_DB
service mysql stop


usr/bin/mysqld_safe