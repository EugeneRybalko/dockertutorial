git clone https://$USERNAME:$PASSWORD@github.com/$USERNAME/$GIT_ENDPOINT.git /workspace/src
cd /workspace/src
mvn package

cp /workspace/src/target/*.war /archive
cp /archive/*.war /usr/local/tomcat/webapps
cd /usr/local/tomcat/bin
bash catalina.sh run