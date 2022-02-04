#!/bin/bash
chmod +x /ari-2-rc-git/script/permission.sh
bash /ari-2-rc-git/script/permission.sh

supervisord -c '/ari-2-rc-git/script/suoervisor.conf'
