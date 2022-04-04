FROM debian:buster

RUN	apt-get update && apt-get -y install vsftpd

COPY tools/vsftpd.conf /tmp/vsftpd.conf
COPY tools/start-ftp.sh /tmp/start-ftp.sh
COPY tools/vsftpd /etc/init.d/vsftpd
RUN chmod +x /tmp/start-ftp.sh

ENTRYPOINT [ "bash", "/tmp/start-ftp.sh"]