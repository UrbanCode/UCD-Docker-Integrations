# TeamCity and IBM UrbanCode Deploy Demo

Summary: Small docker-compose file to set up a UCD server, UCD agent, and TeamCity server.

### Requirements
Docker version 1.12+

### Run
`docker-compose up -d`

### Notice
The teamcity-agent container is commented out due to an error with docker-compose v1.10. The problem has been outlined here: https://github.com/JetBrains/teamcity-docker-minimal-agent/issues/5. The immediate work around for this issue is to manually start your own local teamcity-agent by either downloading the installation files and installing locally or run the teamcity-agent docker container.
TeamCity Agent Manual Installation: https://confluence.jetbrains.com/display/TCD10/Setting+up+and+Running+Additional+Build+Agents#SettingupandRunningAdditionalBuildAgents-InstallingAdditionalBuildAgents
TeamCity Agent Docker Installation: https://hub.docker.com/r/jetbrains/teamcity-agent/
