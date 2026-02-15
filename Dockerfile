FROM node:18-bullseye

RUN apt-get update && apt-get install -y ffmpeg
RUN npm install -g n8n

WORKDIR /data

EXPOSE 5678

CMD n8n start --port=$PORT --tunnel
