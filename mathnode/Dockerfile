FROM node:boron

# Create app directory
WORKDIR /usr/src/app

# Git to get mathapp-node-server
RUN git clone https://github.com/hrahmed/mathapp-node-server.git /myapp/
RUN cp -R /myapp/* /usr/src/app

# Install app dependencies
#COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
#COPY server.js /usr/src/app

# needed for compilation of ca-apm-probe
ENV LINK=g++

# use APP_NAME so we can concatenate with Docker id ($HOSTNAME), CA_APM_PROBENAME would override that
ENV CA_APM_PROBENAME=Mathapp-Node \
  COLLECTOR_AGENT_HOST=collector \
  COLLECTOR_AGENT_PORT=5005

COPY start.sh .

# install from local file
#COPY nodejs-probe-leo_node-20161028.231113-123.tgz ca-apm-probe.tgz
#RUN npm install -g ca-apm-probe.tgz

# install from npm repository
RUN npm install -g ca-apm-probe


EXPOSE 8999
CMD ["./start.sh"]
