FROM node:alpine

EXPOSE 5000
ENV API_URL=http://localhost:8000

WORKDIR /web

RUN apk add --no-cache git && \
    git clone https://github.com/docker-hy/frontend-example-docker.git . && \
    apk del git && \
    npm install && \
    adduser -D web && \
    chown -R web /web

CMD npm start