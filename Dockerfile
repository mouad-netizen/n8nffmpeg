FROM node:18-bullseye

# installer ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

# installer n8n
RUN npm install -g n8n

# dossier de travail
WORKDIR /data

EXPOSE 5678

CMD ["n8n"]
