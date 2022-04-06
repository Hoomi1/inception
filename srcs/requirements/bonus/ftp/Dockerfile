# FROM debian:buster

# RUN	apt-get update && apt-get -y install vsftpd

# COPY tools/vsftpd.conf /tmp/vsftpd.conf
# COPY tools/start-ftp.sh /tmp/start-ftp.sh
# COPY tools/vsftpd /etc/init.d/vsftpd
# RUN chmod +x /tmp/start-ftp.sh

# ENTRYPOINT [ "bash", "/tmp/start-ftp.sh"]

FROM debian:buster

RUN	apt-get update && apt-get -y install vsftpd
# RUN useradd -m -s /bin/bash $FTP_USER && echo "$FTP_USER:$FTP_PASS" | chpasswd && mkdir -p /var/www/ftp && "$FTP_USER" | tee -a /etc/vsftpd.userlist

# COPY tools/vsftpd.conf /etc/vsftpd.conf
COPY tools/start-ftp.sh start-ftp.sh
RUN chmod +x start-ftp.sh
# RUN service vsftpd start
ENTRYPOINT [ "bash", "start-ftp.sh"]