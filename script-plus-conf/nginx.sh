#!/bin/bash
cat /ari-2-rc-git/script-plus-conf/default |sed "s/THERANDOMPORT/$PORT/g" >/etc/nginx/sites-enabled/default
nginx -g 'daemon off;'