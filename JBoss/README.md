#JBoss Demo

Summary: Small docker-compose file to set up a IBM UrbanCode server, JBoss server, and an IBM UrbanCode Deploy agent.

### Versions
- Trial UrbanCode Server and Agent: v6.2.2.0.830952
- JBoss Server: Wildfly 10

### Requirements
- Docker v1.12+

### Run
`./start`

### Credentials
- IBM UrbanCode Server - admin:admin

### Sources
- [IBM UrbanCode Server Docker Installation](https://hub.docker.com/r/ibmcom/ucds/)
- [IBM UrbanCode Agent Docker Installation](https://hub.docker.com/r/ibmcom/ucda/)
- [JBoss Wildfly Server Docker Installation](https://hub.docker.com/r/jboss/wildfly/)

### Instructions
You may run the 'start.sh' script to create the containers or start the cached containers if they are stopped.
When specifying the hostname and port that jboss is running on from the UCD server, the hostname is jboss-server and the port is 8080.
JBoss runs locally on port 8080, and the UCD server runs locally on 8081 for HTTP and 8443 for HTTPS.
