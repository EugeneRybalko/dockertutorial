FROM ubuntu as docker-tutorial

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install git

ARG USERNAME=EugeneRybalko
ARG PASSWORD=jenya26032000
ARG GIT_REPO=dockertutorial

RUN git clone https://${USERNAME}:${PASSWORD}@github.com/${USERNAME}/${GIT_REPO}.git
