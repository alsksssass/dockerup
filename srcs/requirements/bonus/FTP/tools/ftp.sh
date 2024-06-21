#!/bin/sh

set -e

passwd=$FTP_PASSWORD

if [ -z $(getent passwd wordpress) ]; then
	echo -e "$passwd\n$passwd" | adduser wordpress -h /var/lib/nginx/wordpress
fi

exec dumb-init -- vsftpd /etc/vsftpd/vsftpd.conf
