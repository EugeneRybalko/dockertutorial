FROM 3.6.3-jdk-8-slim

RUN apt-get update \
    apt-get upgrade \
    apt-get install git



RUN git clone https://${USERNAME}:${PASSWORD}@github.com/${PATH_TO_GIT}.git
