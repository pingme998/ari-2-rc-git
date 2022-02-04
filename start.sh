#!/bin/bash
chmod +x /ari-2-rc-git/script-plus-conf/permission.sh
bash /ari-2-rc-git/script-plus-conf/permission.sh

supervisord -c '/ari-2-rc-git/script-plus-conf/supervisor.conf'
