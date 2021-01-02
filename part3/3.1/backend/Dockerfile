FROM ubuntu:16.04

EXPOSE 8000
ENV FRONT_URL=http://localhost:5000

WORKDIR /web

RUN apt-get update && apt-get install -y curl git && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt install -y nodejs && \
    rm -rf /var/lib/apt/lists/* && \
    git clone https://github.com/docker-hy/backend-example-docker.git . && \
    apt-get purge -y --auto-remove curl git && \
    npm install

CMD npm start