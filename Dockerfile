FROM rocker/tidyverse:4.1.2
MAINTAINER Akilesh Ramasamy <akident@gmail.com>
RUN cd /home && \
    git clone https://github.com/drakileshr/introR.git  && \
        cd /home/introR/  && \
	cp -r /home/introR/data/ /etc/skel/data/  && \
        cp -r ./eda.R /etc/skel/ && \
   apt-get update && \
   apt-get install -y libjpeg-dev apt-transport-https gnupg2 curl unixodbc && \
   chmod 777 ./mkusers.sh  && \
    ./mkusers.sh
