FROM ubuntu:16.04

WORKDIR /web
RUN apt-get update && apt-get install -y curl git
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
RUN git clone https://github.com/docker-hy/backend-example-docker.git
WORKDIR /web/backend-example-docker
RUN npm install
EXPOSE 8000
CMD npm start