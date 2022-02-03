FROM ubuntu

RUN set -ex\
    && apt update -y \
    && apt upgrade -y \
    && apt install -y aria2\
    && apt install -y wget\
    && apt install -y screen\
    && apt install -y rclone\
    && apt autoremove -y

CMD git clone 'https://github.com/pingme998/ari-2-rc-git'; chmod +x /ari-2-rc-git/start.sh; /ari-2-rc-git/start.sh
