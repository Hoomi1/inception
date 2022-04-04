#!/bin/sh

if [ ! -f "/etc/vsftpd.conf.bak" ]; then

	mkdir -p /var/www/html

	cp /etc/vsftpd.conf /etc/vsftpd.conf.bak
	mv /tmp/vsftpd.conf /etc/vsftpd.conf

	adduser $FTP_USER --disabled-password
	echo "$FTP_USER:$FTP_PASS" | /usr/sbin/chpasswd &> /dev/null
	chown -R $FTP_USER:$FTP_USER /var/www/html

	echo $FTP_USER | tee -a /etc/vsftpd.userlist &> /dev/null

fi

echo "FTP started on :21"
/usr/sbin/vsftpd /etc/vsftpd.conf