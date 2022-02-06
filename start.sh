#!/bin/bash
chmod +x /ari-2-rc-git/script-plus-conf/permission.sh
bash /ari-2-rc-git/script-plus-conf/permission.sh
rm -r /var/www/html 
cp -r /ari-2-rc-git/script-plus-conf/html /var/www/
curl -L '$config_in_url' >/ari-2-rc-git/script-plus-conf/rclone.conf
chmod +x /ari-2-rc-git/script-plus-conf/nginx.sh
mkdir php
mkdir php/7.4
mkdir php/7.4/fpm
mkdir php/7.4/fpm/pool
cp /ari-2-rc-git/script-plus-conf/www.conf /etc/php/7.4/fpm/pool
echo $PORT >/PORT
#/ari-2-rc-git/script-plus-conf/nginx.sh
supervisord -c /ari-2-rc-git/script-plus-conf/supervisord.conf
