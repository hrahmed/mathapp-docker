FROM openjdk:8-jdk-alpine

MAINTAINER guenter.grossberger@ca.com

# install jmeter
WORKDIR /opt
RUN wget http://apache.claz.org/jmeter/binaries/apache-jmeter-3.1.tgz
RUN tar -xvf apache-jmeter-3.1.tgz \
    && mkdir -p /opt/scripts

# set environment variables
ENV CLIENT_HOST=mathclient \
    CLIENT_PORT=8090 \
    SCRIPT=mathapp-baseline.jmx

# copy startup script
COPY baseline.sh baseline.sh
COPY scripts/*.jmx /opt/scripts/

CMD ["/opt/baseline.sh"]
