FROM ubuntu:15.10

ENV DEBIAN_FRONTEND noninteractive
ENV REFRESHED_AT 2015-11-29

# Upgrade and common packages
RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y \
    curl \
    software-properties-common \
    vim \
  && apt-get clean

# ubuntu-restricted-extras
RUN add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) multiverse" \
  && apt-get update \
  && apt-get install -y ubuntu-restricted-extras \
  && /usr/share/doc/libdvdread4/install-css.sh \
  && apt-get clean

# Ffmpeg
RUN apt-get update \
  && apt-get install -y \
    ffmpeg \
    vpx-tools \
    x264 \
    x265 \
  && apt-get clean

# MediaInfo
RUN add-apt-repository ppa:djcj/mediainfo -y \
  && apt-get update \
  && apt-get install -y mediainfo \
  && apt-get clean

# RTMPDump
RUN apt-get update \
  && apt-get install -y rtmpdump \
  && apt-get clean

# GraphicsMagick
RUN apt-get update \
  && apt-get install -y graphicsmagick-imagemagick-compat \
  && apt-get clean

# gstreamer1.0
RUN apt-get update \
  && apt-get install -y \
    gstreamer1.0-fluendo-mp3 \
    gstreamer1.0-libav \
    gstreamer1.0-plugins-bad \
    gstreamer1.0-plugins-good \
    gstreamer1.0-plugins-ugly \
    gstreamer1.0-tools \
  && apt-get clean

RUN mkdir /examples
WORKDIR /examples
