FROM node:boron

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Git to get mathapp-node-server
RUN git clone https://github.com/hrahmed/mathapp-node-server.git /myapp/
RUN cp -R /myapp/* /usr/src/app

# Install app dependencies
#COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
#COPY server.js /usr/src/app

EXPOSE 8999
CMD [ "npm", "start" ]
