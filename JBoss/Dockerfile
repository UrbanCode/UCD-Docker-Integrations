FROM jboss/wildfly
USER root
MAINTAINER jrbarto@us.ibm.com
ADD agent-config /home
COPY ./ibm-ucd-agent.zip /home/ibm-ucd-agent.zip
RUN unzip /home/ibm-ucd-agent.zip -d /home
RUN /home/ibm-ucd-agent-install/install-agent.sh < /home/agent-config
