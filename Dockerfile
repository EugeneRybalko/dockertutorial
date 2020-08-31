FROM maven:3.6.3-jdk-8-slim

RUN apt-get update && \
    apt-get install git -y

ENV USERNAME username
ENV PASSWORD password
ENV GIT_ENDPOINT repository

ENTRYPOINT git clone https://${USERNAME}:${PASSWORD}@github.com/${USERNAME}/${GIT_ENDPOINT}.git
