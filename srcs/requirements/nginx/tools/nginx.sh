#!/bin/sh

set -e

if [ ! -f "/etc/nginx/ssl/server.crt" ] || [ ! -f "/etc/nginx/ssl/server.key" ]; then
	openssl req -newkey rsa:4096 -days 365 -nodes -x509 -subj "/C=KR/ST=Seoul/L=Seoul/O=sungyoon/OU=Sungyoon/CN=KR" -keyout /etc/nginx/ssl/server.key -out /etc/nginx/ssl/server.crt
fi

exec nginx -g "daemon off;"
