FROM ubuntu:latest as download
# prepare stage
RUN apt-get update && apt-get install -y wget
# reuse for all versions to build
ARG STREAMA_VERSION=1.6.7
ENV STREAMA_VERSION=${STREAMA_VERSION}
RUN wget https://github.com/streamaserver/streama/releases/download/v${STREAMA_VERSION}/streama-${STREAMA_VERSION}.jar -O /tmp/streama.jar

FROM openjdk:8-jre-slim

COPY --from=download /tmp/streama.jar /tmp/
COPY start.sh /
COPY application.yml /tmp/

RUN mkdir -p /streama && \
    cd /streama && \
    mv /tmp/streama.jar . && \
    chmod +x streama.jar && \
    mv /tmp/application.yml . && \
    chmod +x /start.sh

ENTRYPOINT ["/start.sh"]

EXPOSE 8080




