FROM maven:3.6.3-jdk-8-slim

RUN apt-get update && \
    apt-get install git -y

ENV USERNAME username
ENV PASSWORD password
ENV GIT_ENDPOINT repository
ENV SCRIPTS_PATH workspace/scripts

RUN mkdir -p ${SCRIPTS_PATH}

COPY entry.sh ${SCRIPTS_PATH}/entry.sh
RUN chmod +x ${SCRIPTS_PATH}/entry.sh

CMD ["bin/bash","/workspace/scripts/entry.sh", "pullContentAndBuild"]
