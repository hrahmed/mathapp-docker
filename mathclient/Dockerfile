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
  AGENT_NAME=MathClient \
  HEAP=2048m

# install mathapp application
COPY MathClient.war $CATALINA_HOME/webapps/

COPY tomcat-users.xml $CATALINA_HOME/conf

# install agent
ADD IntroscopeAgentFiles-NoInstaller${INTROSCOPE_VERSION}tomcat.unix.tar $CATALINA_HOME

# browser agent
ENV BROWSER_AGENT_ENABLED=false \
  AXA_BROWSER_AGENT_ENABLED=true \
  AXA_SCRIPT="<script type="text/javascript" id="ca_eum_ba" agent=browser src="https://axa.trials.ca.com/mdo/v1/sdks/browser/BA.js" data-profileUrl="https://collector.axa.trials.ca.com/profiles/HAROON.AHMED%40CA.COM-C/mathapp-web?agent=browser" data-tenantID="HAROON.AHMED@CA.COM-C" data-appID="mathapp-web" data-appKey="39b9b850-8915-11e6-bfa9-a9dcb512d6bd" ></script>"

# configure CA APM java agent
COPY setenv.sh $CATALINA_HOME/bin/setenv.sh
COPY update-jsps.sh $CATALINA_HOME/update-jsps.sh

# install and configure ACC
ENV ACC_CS=http://configserver:8888 \
  ACC_HOME=/root \
  ACC_ENABLED=false

COPY start.sh $ACC_HOME/

#ADD acc-controller-package.tar $ACC_HOME/

EXPOSE 8090

CMD ["/root/start.sh"]
