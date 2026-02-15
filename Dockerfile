FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Installer dépendances
RUN apt-get update && \
    apt-get install -y curl ffmpeg ca-certificates gnupg && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g n8n && \
    apt-get clean

# dossier de travail
WORKDIR /data

# port n8n
EXPOSE 5678

# démarrage
CMD ["n8n", "start"]
