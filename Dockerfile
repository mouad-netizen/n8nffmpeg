FROM n8nio/n8n:1.73.0

USER root
RUN apt-get update && apt-get install -y ffmpeg

USER node
