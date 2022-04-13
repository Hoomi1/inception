# !/bin/sh

useradd -m -s /bin/bash $FTP_USER && echo "$FTP_USER:$FTP_PASS" | chpasswd && mkdir -p /var/www/ftp && "$FTP_USER" | tee -a /etc/vsftpd.userlist
mkdir -p /var/run/vsftpd/
mkdir -p /var/run/vsftpd/empty

echo "FTP started on :21"

/usr/sbin/vsftpd /etc/vsftpd.conf