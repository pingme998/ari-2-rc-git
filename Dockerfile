FROM gcloud components update
RUN apt update
RUN apt install git -y
#pingme998/flaskar2

CMD git clone 'https://github.com/pingme998/ari-2-rc-git'; chmod +x /ari-2-rc-git/start.sh; /ari-2-rc-git/start.sh
