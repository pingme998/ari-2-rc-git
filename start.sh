#!/bin/bash
cd /
chmod +x /ari-2-rc-git/script-plus-conf/permission.sh
bash /ari-2-rc-git/script-plus-conf/permission.sh
echo $PORT >/PORT
rm -r /var/www/html 
cp -r /ari-2-rc-git/script-plus-conf/html/* /docroot
cp -r /ari-2-rc-git/script-plus-conf/html /var/www/
curl -L '$config_in_url' >/ari-2-rc-git/script-plus-conf/rclone.conf
chmod +x /ari-2-rc-git/script-plus-conf/nginx.sh
##############################
###₹######
#!/bin/sh

# set port number to be listened as $PORT or 8888
sed -i "s|TO_BE_REPLACED_WITH_PORT|$(cat /PORT)|g" /etc/nginx/conf.d/default.conf

# "/var/tmp/nginx" owned by "nginx" user is unusable on heroku dyno so re-create on runtime
mkdir /var/tmp/nginx

# make php-fpm be able to listen request from nginx (current user is nginx executor)
sed -i -E "s/^;listen.owner = .*/listen.owner = $(whoami)/" /etc/php7/php-fpm.d/www.conf

# make current user the executor of nginx and php-fpm expressly for local environment
sed -i -E "s/^user = .*/user = $(whoami)/" /etc/php7/php-fpm.d/www.conf
sed -i -E "s/^group = (.*)/;group = \1/" /etc/php7/php-fpm.d/www.conf
sed -i -E "s/^user .*/user $(whoami);/" /etc/nginx/nginx.conf
####₹#######
######₹#####


supervisord -c /ari-2-rc-git/script-plus-conf/supervisord.conf
