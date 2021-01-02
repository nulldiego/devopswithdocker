FROM node:alpine

EXPOSE 8000
ENV FRONT_URL=http://localhost:5000

WORKDIR /web

RUN apk add --no-cache git && \
    git clone https://github.com/docker-hy/backend-example-docker.git . && \
    apk del git && \
    npm install && \
    adduser -D web && \
    chown -R web /web

USER web

CMD npm start