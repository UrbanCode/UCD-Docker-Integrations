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

echo "Installing simple Publisher template...."
java -jar $JENKINS_CLI_JAR -s $JENKINS_SERVER create-job datapower-publisher --username $USERNAME --password $PASSWORD < jenkins-templates/template-publisher.xml

echo "Installing simple Pipeline template...."
java -jar $JENKINS_CLI_JAR -s $JENKINS_SERVER create-job datapower-pipeline --username $USERNAME --password $PASSWORD < jenkins-templates/template-pipeline.xml

echo "Configure the two UCD Servers for the Pipeline and Publisher plugins here: " + $JENKINS_SERVER + "/configure"
echo "Name the configurations 'Docker IBM UrbanCode Deploy Server'."
echo ""

echo "Configure the Ant Build tool here: " + $JENKINS_SERVER + "/configureTools"
echo "Name configuration 'default'."
