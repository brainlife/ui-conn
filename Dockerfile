FROM nvidia/cuda:9.0-cudnn7-runtime-ubuntu16.04

MAINTAINER Soichi Hayashis <hayashis@iu.edu>

EXPOSE 5900
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    vim mesa-utils tightvncserver lxde wmctrl

# Install the MCR dependencies and some things we'll need and download the MCR
# from Mathworks -silently install it
RUN apt-get -qq install -y unzip xorg wget && \
    mkdir /mcr-install && \
    mkdir /opt/mcr && \
    cd /mcr-install && \
    wget http://www.mathworks.com/supportfiles/downloads/R2017a/deployment_files/R2017a/installers/glnxa64/MCR_R2017a_glnxa64_installer.zip && \
    cd /mcr-install && \
    unzip -q MCR_R2017a_glnxa64_installer.zip && \
    ./install -destinationFolder /opt/mcr -agreeToLicense yes -mode silent && \
    cd / && \
    rm -rf mcr-install

#install conn toolkit
RUN cd / && wget https://www.nitrc.org/frs/download.php/10081/conn17f_glnxa64.zip -O conn.zip && unzip /conn.zip -d /

#maybe needed?
#RUN apt-get install -y wmctrl tcsh libglu1-mesa libgomp1 libjpeg62

#install virtualgl
ADD virtualgl_2.5.2_amd64.deb /
RUN dpkg -i /virtualgl_2.5.2_amd64.deb

#install virtualgl from bumblebee (doesn't work)
#RUN apt-get install -y software-properties-common
#RUN add-apt-repository ppa:bumblebee/stable
#RUN apt-get update && apt-get -y install virtualgl

RUN apt-get install -y xfce4-goodies

# Copy VNC script that handles restarts
ADD startvnc.sh /
ADD xstartup /root/.vnc/xstartup
ENV USER=root X11VNC_PASSWORD=override

CMD ["/startvnc.sh"]

