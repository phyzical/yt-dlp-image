FROM alpine

RUN apk --update add \
    python3 \
    python3-dev \
    py-pip \
    gcc \
    libc-dev \
    ffmpeg \
    git \
    g++

RUN python3 -m pip install --upgrade wheel
RUN python3 -m pip install --upgrade yt-dlp

WORKDIR /workdir
ENTRYPOINT [ "yt-dlp" ]
