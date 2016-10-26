FROM node
MAINTAINER josgraha

VOLUME ["/root"]

ADD setup-ffmpeg.sh /root
RUN /root/setup-ffmpeg.sh
