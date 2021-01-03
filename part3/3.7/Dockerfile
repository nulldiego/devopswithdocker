FROM openjdk:8 as build-stage

WORKDIR /web
RUN git clone https://github.com/docker-hy/spring-example-project.git . && \
    ./mvnw package


FROM openjdk:8-jre-alpine

EXPOSE 8080

COPY --from=build-stage /web/target/docker-example-1.1.3.jar .

RUN adduser -D web && \
    chown web ./docker-example-1.1.3.jar

USER web

CMD java -jar ./docker-example-1.1.3.jar