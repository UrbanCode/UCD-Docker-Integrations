# Jenkins Demo

Summary: Small docker-compose file to set up a IBM UrbanCode server, IBM UrbanCode agent, and Jenkins server.

##Overview

### Versions
- Trial UrbanCode Server and Agent: v6.2.2.0.830952
- Jenkins Server: latest

### Requirements
- Docker v1.12+

### Run
`docker-compose up [-d]`

## Quick Tutorial

### Install the Jenkins Plugins
`./installPlugins.sh`
Note: Update the server URL and credentials in the script.

### Install sample Jenkins Projects
`./installTemplates.sh`
Note: Update the server URL and credentials in the script.

This script will install the two jenkins plugins and create two projects.

You will need to manually create:
- `UCD - Pipeline` and `UCD - Publisher` empty components in IBM UrbanCode Deploy.
- Ant build configuration labeled `Default` in Jenkins' Global Tool configuration
- Two IBM UrbanCode Deploy configurations, one for each of the Pipeline and Publisher jobs, in Configure System settings. Name both of these server configurations `Docker IBM UrbanCode Deploy Server`. The IBM UrbanCode Deploy Server URL is `https://ucd-server:8443` and the credentials are `admin:admin`.

### Credentials
- IBM UrbanCode Server - admin:admin
- Jenkins - Initialized at start up.

## Full Documentation

### Complete Tutorials
- [Jenkins Publisher Simplified Tutorial](https://developer.ibm.com/urbancode/plugindoc/ibmucd/jenkins-pipeline-formerly-jenkins-2-0/2-2/usage/)
- Jenkins Pipeline Script Tutorial - Coming soon!
- [Jenkins Pipeline Syntax Overview](https://developer.ibm.com/urbancode/plugindoc/ibmucd/jenkins-pipeline-formerly-jenkins-2-0/2-2/jenkins-pipeline-syntax-overview/)

### Sources
- [IBM UrbanCode Server Docker Installation](https://hub.docker.com/r/ibmcom/ucds/)
- [IBM UrbanCode Agent Docker Installation](https://hub.docker.com/r/ibmcom/ucda/)
- [Jenkins Docker Installation](https://hub.docker.com/r/library/jenkins/)
