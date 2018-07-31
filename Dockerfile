FROM ubuntu:xenial-20180228

LABEL maintainer="jin.hyun.cheong.gr@dartmouth.edu"

# Update OS
RUN apt-get update --fix-missing && apt-get install -y eatmydata

# Install needed system packages
RUN eatmydata apt-get install -y python3-pip python3-dev libopencv-dev python-opencv git wget
RUN pip3 install --upgrade pip
RUN eatmydata apt-get install -y vim
RUN apt-get install apache2
RUN apt-get install libapache2-mod-perl2
RUN a2enmod include
RUN a2enmod rewrite
RUN a2enmod cgi

# Run as executable
# ENTRYPOINT ["/usr/bin/python3", "app.py"]
ENTRYPOINT ["/usr/bin/bash"]
