cp /workspace/src/target/*.war /archive
cp /archive/*.war /usr/local/tomcat/webapps
cd /usr/local/tomcat/bin
bash catalina.sh run