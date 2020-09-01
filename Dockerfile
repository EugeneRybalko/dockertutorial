FROM maven:3.6.3-jdk-8-slim

RUN apt-get update && \
    apt-get install git -y

ENV USERNAME username
ENV PASSWORD password
ENV GIT_ENDPOINT repository
ENV WORKSPACE workspace/scripts

RUN mkdir -p ${WORKSPACE}

COPY entry.sh ${WORKSPACE}

ENTRYPOINT ./workspace/scripts/entry.sh pullContentAndBuild
