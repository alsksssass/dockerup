#!/bin/sh

set -e

passwd=$SAMBA_PASSWORD

if [ -z $(getent passwd wordpress) ]; then
	echo -e "$passwd\n$passwd" | adduser wordpress -h /var/lib/nginx/wordpress
	echo -e "$passwd\n$passwd" | smbpasswd -a wordpress
fi

exec smbd -F --no-process-group
