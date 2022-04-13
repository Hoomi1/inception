FROM debian:buster

RUN	apt-get update && apt-get -y install vsftpd

COPY tools/start-ftp.sh start-ftp.sh
RUN chmod +x start-ftp.sh

ENTRYPOINT [ "bash", "start-ftp.sh"]