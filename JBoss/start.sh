#!/bin/sh
docker-compose up -d ucd-server
docker cp ucd-server:/opt/ibm-ucd/server/opt/tomcat/webapps/ROOT/tools/ibm-ucd-agent.zip .

# wait until UCD server has started
#while ! nc -z localhost 8080;
#  do
#    echo sleeping;
#    sleep 1;
#  done;
#echo Connected!;

docker-compose build jboss-image      
docker-compose up -d jboss-server
docker exec jboss-server /opt/ibm-ucd/agent/bin/agent start
