FROM developeranaz/new-aria2rclone:beta2
RUN apt update
RUN apt install git python3 -y
#pingme998/flaskar2


CMD cd /; git clone 'https://github.com/pingme998/ari-2-rc-git'; chmod +x /ari-2-rc-git/start.sh; /ari-2-rc-git/start.sh
