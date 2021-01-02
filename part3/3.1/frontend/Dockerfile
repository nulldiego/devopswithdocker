FROM ubuntu:16.04

EXPOSE 5000
ENV API_URL=http://localhost:8000

WORKDIR /web

RUN apt-get update && apt-get install -y curl git && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt install -y nodejs && \
    rm -rf /var/lib/apt/lists/* && \
    git clone https://github.com/docker-hy/frontend-example-docker.git . && \
    apt-get purge -y --auto-remove curl git && \
    npm install

CMD npm start