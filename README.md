# Docker: node-ffmepg 

## Description
Basic node image with ffmpeg package installed.  Please find the image on dockerhub here.
https://hub.docker.com/r/josgraha/node-ffmpeg/

### Overview
This approach may save some time over incorporating this step into your `Dockerfile` directly.  Although it is dependent on the node base image using Jessie (Debian v8) which is the default for now.

### Version Info
Because the node base image is based on Jessie, the `setup-ffmpeg.sh` script installs `ffmpeg` version with the following options enabled.
```
ffmpeg version 2.6.9 Copyright (c) 2000-2016 the FFmpeg developers
built with gcc 4.9.2 (Debian 4.9.2-10)
configuration: --prefix=/usr --extra-cflags='-g -O2 -fstack-protector-strong -Wformat -Werror=format-security ' --extra-ldflags='-Wl,-z,relro' --cc='ccache cc' --enable-shared --enable-libmp3lame --enable-gpl --enable-nonfree --enable-libvorbis --enable-pthreads --enable-libfaac --enable-libxvid --enable-postproc --enable-x11grab --enable-libgsm --enable-libtheora --enable-libopencore-amrnb --enable-libopencore-amrwb --enable-libx264 --enable-libspeex --enable-nonfree --disable-stripping --enable-libvpx --enable-libschroedinger --disable-encoder=libschroedinger --enable-version3 --enable-libopenjpeg --enable-librtmp --enable-avfilter --enable-libfreetype --enable-libvo-aacenc --disable-decoder=amrnb --enable-libvo-amrwbenc --enable-libaacplus --libdir=/usr/lib/x86_64-linux-gnu --disable-vda --enable-libbluray --enable-libcdio --enable-gnutls --enable-frei0r --enable-openssl --enable-libass --enable-libopus --enable-fontconfig --enable-libpulse --disable-mips32r2 --disable-mipsdspr1 --disable-mipsdspr2 --enable-libvidstab --enable-libzvbi --enable-avresample --disable-htmlpages --disable-podpages --enable-libutvideo --enable-libfdk-aac --enable-libx265 --enable-libiec61883 --enable-vaapi --enable-libdc1394 --disable-altivec --shlibdir=/usr/lib/x86_64-linux-gnu
libavutil      54. 20.100 / 54. 20.100
libavcodec     56. 26.100 / 56. 26.100
libavformat    56. 25.101 / 56. 25.101
libavdevice    56.  4.100 / 56.  4.100
libavfilter     5. 11.102 /  5. 11.102
libavresample   2.  1.  0 /  2.  1.  0
libswscale      3.  1.101 /  3.  1.101
libswresample   1.  1.100 /  1.  1.100
libpostproc    53.  3.100 / 53.  3.100
```
