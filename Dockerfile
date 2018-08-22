FROM mhart/alpine-node:latest
## Use Alpine as the OS because of it's size

MAINTAINER John Kelley johnkelley4477@gmail.com

## Update package definitions
RUN apk upgrade --update

## Install GIT
RUN apk add git

## Move to dev folder
RUN git clone https://github.com/johnkelley4477/Pack97NodeJSBE.git

## Create Working Dir
WORKDIR /Pack97NodeJSBE

## Checkout develop branch (dev)
RUN git checkout develop

## Delete GIT
## RUN apk del git

## Install dependances
RUN npm install

## Install Nodemon (dev) 
RUN npm install -g nodemon

EXPOSE 4477

CMD ["nodemon", "index.js"]