FROM alpine

RUN apk --update add \
    python3 \
    py-pip \
    gcc \
    libc-dev \
    ffmpeg \
    git

RUN python3 -m pip install --upgrade wheel
RUN python3 -m pip install --upgrade yt-dlp

# RUN python3 -m pip install --upgrade git+https://github.com/nihil-admirari/yt-dlp.git@sponsor-block

WORKDIR /workdir
ENTRYPOINT [ "yt-dlp" ]
