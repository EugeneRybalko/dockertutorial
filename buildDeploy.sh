#Clone repository and package it to war file
bash entry.sh pullContentAndBuild

#Deploy and run catalina
cp /workspace/src/target/*.war /archive
cd /archive
mv *.war demo.war
cp /archive/*.war /usr/local/tomcat/webapps
cd /usr/local/tomcat/bin
bash catalina.sh run