# Jenkins Demo

Summary: Small docker-compose file to set up a IBM UrbanCode server, IBM UrbanCode agent, and Jenkins server.

### Versions
- Trial UrbanCode Server and Agent: v6.2.2.0.830952
- Jenkins Server: latest

### Requirements
- Docker v1.12+

### Run
`docker-compose up [-d]`

### Install the Jenkins Plugins
`./installPlugins.sh`


### Install sample Jenkins Projects
`./installTemplates.sh`

This script will install the two jenkins plugins and create two projects.

You will need to manually create:
- `UCD - Pipeline` and `UCD - Publisher` empty components in IBM UrbanCode Deploy.
- Ant build configuration labeled `Default` in Jenkins' Global Tool configuration
- Two IBM UrbanCode Deploy configurations, one for each of the Pipeline and Publisher jobs, in Configure System settings. Name both of these server configurations `Docker IBM UrbanCode Deploy Server`. The IBM UrbanCode Deploy Server URL is `https://ucd-server:8443` and the credentials are `admin:admin`.

### Credentials
- IBM UrbanCode Server - admin:admin
- Jenkins - Initialized at start up.

### Tutorials and Documentation
- [Jenkins Publisher Simplified Tutorial](https://developer.ibm.com/urbancode/plugindoc/ibmucd/jenkins-pipeline-formerly-jenkins-2-0/2-2/usage/)
- Jenkins Pipeline Script Tutorial - Coming soon!
- [Jenkins Pipeline Syntax Overview](https://developer.ibm.com/urbancode/plugindoc/ibmucd/jenkins-pipeline-formerly-jenkins-2-0/2-2/jenkins-pipeline-syntax-overview/)
### Sources
- [IBM UrbanCode Server Docker Installation](https://hub.docker.com/r/ibmcom/ucds/)
- [IBM UrbanCode Agent Docker Installation](https://hub.docker.com/r/ibmcom/ucda/)
- [Jenkins Docker Installation](https://hub.docker.com/r/library/jenkins/)