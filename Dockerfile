FROM n8nio/n8n:latest

USER root

RUN if command -v apk > /dev/null; then \
      apk add --no-cache ffmpeg; \
    else \
      apt-get update && apt-get install -y ffmpeg; \
    fi

USER node
