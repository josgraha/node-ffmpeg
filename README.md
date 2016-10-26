# Docker: node-ffmepg 

## Description
Basic node image with ffmpeg package installed.  Please find these files on my github repository here.


The Dockerfile is blelow
```
FROM node
MAINTAINER josgraha

VOLUME ["/root"]

ADD setup-ffmpeg.sh /root
RUN /root/setup-ffmpeg.sh
```

The setup-ffmpeg.sh file is below
```
#!/usr/bin/env bash
echo 'deb http://www.deb-multimedia.org jessie main non-free' >> /etc/apt/sources.list
echo 'deb-src http://www.deb-multimedia.org jessie main non-free' >> /etc/apt/sources.list
apt-get update
apt-get install -y --force-yes deb-multimedia-keyring
apt-get remove -y --force-yes ffmpeg
apt-get install -y --force-yes build-essential libmp3lame-dev libvorbis-dev libtheora-dev libspeex-dev yasm pkg-config libfaac-dev libopenjpeg-dev libx264-dev libav-tools ffmpeg
```