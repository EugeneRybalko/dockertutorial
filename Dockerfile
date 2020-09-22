FROM eugeniao/docker-er:tutor1

RUN apt-get -y install wget && \
    mkdir /usr/local/tomcat && \
    wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.8/bin/apache-tomcat-9.0.8.tar.gz -O /tmp/tomcat.tar.gz && \
    cd /tmp && tar xvfz tomcat.tar.gz && \
    cp -Rv /tmp/apache-tomcat-9.0.8/* /usr/local/tomcat/

EXPOSE 8080
VOLUME /archive
COPY deploy.sh /workspace/scripts
COPY buildDeploy.sh /workspace/scripts
WORKDIR /workspace/scripts

ENTRYPOINT ["/bin/bash"]
CMD ["entry.sh", "pullContentAndBuild"]