FROM node:18-bullseye

# installer ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

# installer n8n
RUN npm install -g n8n

# dossier de travail
WORKDIR /data

# port utilisé par n8n
EXPOSE 5678

# démarrage correct de n8n
CMD ["n8n", "start"]
