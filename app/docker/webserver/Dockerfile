# runs bower within a container
FROM ubuntu:18.04

ENV HOME /root

RUN apt-get update -qq
RUN apt-get install -y -qq git curl wget

# install npm
RUN apt-get install -y -qq npm
# RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm config set registry="http://registry.npmjs.org/"

# install bower

WORKDIR /srv/
RUN npm install --global gulp-cli