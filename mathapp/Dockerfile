FROM tomcat

MAINTAINER haroon.ahmed@ca.com

ADD MathClient.war /usr/local/tomcat/webapps/
ADD MathProxy.war /usr/local/tomcat/webapps/
ADD MathSimpleBackend.war /usr/local/tomcat/webapps/
ADD MathComplexBackend.war /usr/local/tomcat/webapps/


ADD IntroscopeAgentFiles-NoInstaller10.0.0.12tomcat.unix.tar /usr/local/tomcat

ENV WILY_HOME=/usr/local/tomcat/wily
ENV CATALINA_OPTS=-Xmx2048m

ADD init_tomcat.sh /opt/init_tomcat.sh
ADD init_agent.sh /opt/init_agent.sh

RUN /opt/init_tomcat.sh
ADD tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml

# now add the APM agent
ENV CATALINA_OPTS="-Xmx2048m -javaagent:$WILY_HOME/Agent.jar -Dcom.wily.introscope.agentProfile=$WILY_HOME/core/config/IntroscopeAgent.profile -Dcom.wily.introscope.agent.agentName=mathapp"

RUN /opt/init_agent.sh

EXPOSE 8080

CMD catalina.sh run
