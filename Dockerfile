FROM rocker/verse:4.1.2
MAINTAINER Akilesh Ramasamy <akident@gmail.com>
RUN git clone https://github.com/drakileshr/introR.git  && \
    cd introR/  && \
	cp /data/ /etc/skel/data/  && \
    apt-get update && \
    apt-get install -y libjpeg-dev apt-transport-https gnupg2 curl unixodbc && \
    chmod 777 ./mkusers.sh  && \
    ./mkusers.sh  && \
    chmod 777 ./eda.R && \
    ./eda.R && \
    R -e 'devtools::install_deps()' 
