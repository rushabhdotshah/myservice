# DOCKER-VERSION 1.0
#FROM    ubuntu:latest
FROM node:argon
#
# Install nodejs npm
#
RUN apt-get update
RUN apt-get install -y nodejs npm curl

#
# add application sources
#
RUN mkdir -p /app
WORKDIR /app
COPY package.json /app/package.json
RUN cd /app; npm install

COPY . /app
#
# Expose the default port
#
EXPOSE  3000
#
# Start command
#


#CMD ["node", "app.js"]
CMD ["npm", "start"]
