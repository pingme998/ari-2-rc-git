#!/bin/bash
chmod +x /ari-2-rc-git/script-plus-conf/permission.sh
bash /ari-2-rc-git/script-plus-conf/permission.sh
rm -r /var/www/html 
cp -r /ari-2-rc-git/script-plus-conf/html /var/www/

supervisord -c '/ari-2-rc-git/script-plus-conf/supervisord.conf'
