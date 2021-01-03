FROM node:alpine as build-stage

EXPOSE 5000
ENV API_URL=http://localhost:8000

WORKDIR /web

RUN apk add --no-cache git && \
    git clone https://github.com/docker-hy/frontend-example-docker.git . && \
    npm install && \
    npm run build

FROM node:alpine

RUN npm install -g serve \
    && adduser -D web

COPY --from=build-stage /web/dist ./dist

USER web

CMD serve -s -l 5000 dist