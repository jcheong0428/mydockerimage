FROM ubuntu:xenial-20180228

LABEL maintainer="eshin.jolly.gr@dartmouth.edu"

# Update OS
RUN apt-get update --fix-missing && apt-get install -y eatmydata

# Install needed system packages
RUN eatmydata apt-get install -y python3-pip python3-dev libopencv-dev python-opencv git wget
RUN pip3 install --upgrade pip
RUN eatmydata apt-get install -y vim

# Run as executable
# ENTRYPOINT ["/usr/bin/python3", "app.py"]
ENTRYPOINT ["/usr/bin/python3"]
