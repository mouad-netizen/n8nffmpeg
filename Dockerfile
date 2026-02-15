FROM jrottenberg/ffmpeg:6.0-ubuntu

RUN apt-get update && apt-get install -y nodejs npm
RUN npm install -g n8n

WORKDIR /data

EXPOSE 5678

CMD ["n8n", "start"]
