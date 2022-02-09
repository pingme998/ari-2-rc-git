#!/bin/bash
cd /
chmod +x /ari-2-rc-git/script-plus-conf/permission.sh
bash /ari-2-rc-git/script-plus-conf/permission.sh
echo $PORT >/PORT
sed -i "s|4996|$(cat /PORT)|g" /ari-2-rc-git/script-plus-conf/app.py
curl -L '$config_in_url' >/ari-2-rc-git/script-plus-conf/rclone.conf

supervisord -c /ari-2-rc-git/script-plus-conf/supervisord.conf
