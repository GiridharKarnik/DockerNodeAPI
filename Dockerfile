# Base image. Alpine is a small, super light weight Linux distro
FROM alpine
# Metadata can be anything
LABEL maintainer="giridhar.co@live.com"
# apk is the package manager for Apline Linux -- makes another layer
RUN apk add --update nodejs nodejs-npm
# copy files into /src directory -- makes another layer
COPY . /src

WORKDIR /src
# RUN command is used to run some commands -- makes another layer
RUN npm install
# App listenes on port 8080
EXPOSE 8080

ENTRYPOINT [ "node", "./server.js" ]


