#! /bin/bash

## User Properties
## ONLY MODIFY THESE
JENKINS_SERVER="http://localhost:8080"
USERNAME="admin"
PASSWORD="PASSWORD"

####################################################################################################
# General Properties
PUBLISHER="ibm-ucdeploy-publisher-1.6.898775.hpi"
PIPELINE="ibm-ucdeploy-build-steps-2.4.911656.hpi"
FTP_SITE="http://public.dhe.ibm.com/software/products/UrbanCode/plugins/ibmucd"
JENKINS_CLI_JAR="downloads/jenkins-cli.jar"

echo "Downloading jenkins-cli.jar..."
mkdir downloads
curl -o  $JENKINS_CLI_JAR $JENKINS_SERVER/jnlpJars/jenkins-cli.jar

echo "Installing Jenkins Publisher plugin...."
java -jar $JENKINS_CLI_JAR -s $JENKINS_SERVER install-plugin $FTP_SITE/jenkins-ud-plugin/$PUBLISHER --username $USERNAME --password $PASSWORD
mv $PUBLISHER downloads/$PUBLISHER

echo "Installing Jenkins Pipeline plugin...."
java -jar $JENKINS_CLI_JAR -s $JENKINS_SERVER install-plugin $FTP_SITE/jenkins-pipeline-ud-plugin/$PIPELINE -restart --username $USERNAME --password $PASSWORD
mv $PIPELINE downloads/$PIPELINE
