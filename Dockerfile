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
RUN mkdir -p /svc
WORKDIR /svc
COPY package.json /svc/package.json
RUN cd /svc; npm install

COPY . /svc
#
# Expose the default port
#
EXPOSE  4000
#
# Start command
#

CMD ["npm", "start"]
