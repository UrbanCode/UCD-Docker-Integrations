#! /bin/bash

## User Properties
## ONLY MODIFY THESE
JENKINS_SERVER="http://192.168.99.100:8080"
USERNAME="admin"
PASSWORD="8c15c60c57ab4e1abe7f0b4e06d27ce9"

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

echo "Jenkins is restarting..."
## WAIT FOR SERVER ONLINE LOOP
echo "It's back!"

echo "Installing simple Publisher template...."
java -jar $JENKINS_CLI_JAR -s $JENKINS_SERVER create-job datapower-publisher --username $USERNAME --password $PASSWORD < jenkins-templates/template-publisher.xml

echo "Installing simple Pipeline template...."
java -jar $JENKINS_CLI_JAR -s $JENKINS_SERVER create-job datapower-pipeline --username $USERNAME --password $PASSWORD < jenkins-templates/template-pipeline.xml

echo "Configure the UCD Server here: " + $JENKINS_SERVER + "/configure"
echo "Configure the Ant Build tool here: " + $JENKINS_SERVER + "/configureTools"
