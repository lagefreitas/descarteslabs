FROM jupyter/datascience-notebook
MAINTAINER André Lage-Freitas "https://github.com/proflage"

USER root

RUN echo "deb http://archive.ubuntu.com/ubuntu/ xenial main restricted contrib" >> /etc/apt/sources.list 
RUN apt update
#RUN apt upgrade -y

# sshd 
#RUN apt install -y openssh-server vim
#RUN mkdir /var/run/sshd
##RUN echo 'root:root' |chpasswd
#RUN sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
#RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config
#EXPOSE 22
#CMD    ["/usr/sbin/sshd", "-D"]

#
# DescartesLabs (DL) stuff
#

# deps from apt
RUN apt install -y libproj-dev proj-data proj-bin
RUN apt install -y libgeos-dev
# deps from pip
RUN pip install matplotlib 
RUN pip install shapely 
RUN pip install cython 
RUN pip install cartopy 
RUN pip install pyproj
RUN pip install descarteslabs
