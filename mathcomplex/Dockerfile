FROM tomcat:7-jre8

MAINTAINER guenter.grossberger@ca.com

ENV PROXY_HOST=mathproxy
ENV PROXY_PORT=8091
ENV SIMPLE_HOST=mathsimple
ENV SIMPLE_PORT=8092
ENV COMPLEX_HOST=mathcomplex
ENV COMPLEX_PORT=8093
ENV DOTNET_HOST=mathdotnet
ENV DOTNET_PORT=80
ENV NODE_HOST=mathnode
ENV NODE_PORT=8999

ENV WILY_HOME=$CATALINA_HOME/wily
ENV INTROSCOPE_VERSION=10.5.1.8
ENV EM_HOST=10.130.179.127
ENV EM_PORT=5001
ENV AGENT_NAME=MathComplexBackend
ENV HEAP=2048m

# install mathapp application
COPY MathComplexBackend.war $CATALINA_HOME/webapps/

# install agent
ADD IntroscopeAgentFiles-NoInstaller${INTROSCOPE_VERSION}tomcat.unix.tar $CATALINA_HOME

# configure CA APM java agent
COPY setenv.sh $CATALINA_HOME/bin/setenv.sh

# install and configure ACC
ENV ACC_CS=http://configserver:8888
ENV ACC_HOME=/root
ENV ACC_ENABLED=false

COPY start.sh $ACC_HOME/

#ADD acc-controller-package.tar $ACC_HOME/

EXPOSE 8093

CMD ["/root/start.sh"]
