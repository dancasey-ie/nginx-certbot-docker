#!/bin/sh

echo "Substitute DOMAIN=$DOMAIN"
envsubst '${DOMAIN}' < /etc/nginx/templates/default.conf.template > /etc/nginx/conf.d/default.conf
exec "$@"