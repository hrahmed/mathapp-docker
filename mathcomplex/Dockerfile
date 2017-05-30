FROM tomcat:7-jre8

MAINTAINER guenter.grossberger@ca.com

ENV PROXY_HOST=mathproxy \
  PROXY_PORT=8091 \
  SIMPLE_HOST=mathsimple \
  SIMPLE_PORT=8092 \
  COMPLEX_HOST=mathcomplex \
  COMPLEX_PORT=8093 \
  DOTNET_HOST=mathdotnet \
  DOTNET_PORT=80 \
  NODE_HOST=mathnode \
  NODE_PORT=8999

ENV WILY_HOME=$CATALINA_HOME/wily \
  INTROSCOPE_VERSION=10.5.1.8 \
  EM_HOST=10.130.179.127 \
  EM_PORT=5001 \
  AGENT_NAME=MathComplexBackend \
  HEAP=2048m

# install mathapp application
COPY MathComplexBackend.war $CATALINA_HOME/webapps/

# install agent
ADD IntroscopeAgentFiles-NoInstaller${INTROSCOPE_VERSION}tomcat.unix.tar $CATALINA_HOME

# configure CA APM java agent
COPY setenv.sh $CATALINA_HOME/bin/setenv.sh

# install and configure ACC
ENV ACC_CS=http://configserver:8888 \
  ACC_HOME=/root \
  ACC_ENABLED=false

COPY start.sh $ACC_HOME/

#ADD acc-controller-package.tar $ACC_HOME/

EXPOSE 8093

CMD ["/root/start.sh"]
