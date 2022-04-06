# !/bin/sh

useradd -m -s /bin/bash $FTP_USER && echo "$FTP_USER:$FTP_PASS" | chpasswd && mkdir -p /var/www/ftp && "$FTP_USER" | tee -a /etc/vsftpd.userlist
mkdir -p /var/run/vsftpd/
mkdir -p /var/run/vsftpd/empty
# if [ ! -f "/etc/vsftpd.conf.bak" ]; then

# 	mkdir -p /var/www/html

# 	cp /etc/vsftpd.conf /etc/vsftpd.conf.bak
# 	mv vsftpd.conf /etc/vsftpd.conf

# 	adduser $FTP_USER --disabled-password
# 	echo "$FTP_USER:$FTP_PASS" | /usr/sbin/chpasswd &> /dev/null
# 	chown -R $FTP_USER:$FTP_USER /var/www/html

# 	echo $FTP_USER | tee -a /etc/vsftpd.userlist &> /dev/null

# fi

# echo "FTP started on :21"
# service vsftpd start
/usr/sbin/vsftpd /etc/vsftpd.conf