# Developpment stage
FROM node:12.18-alpine AS base-builder
RUN apk update
RUN apk add --no-cache python make g++
RUN apk add --no-cache libc6-compat
WORKDIR /usr/src/app
ADD . /usr/src/app/
COPY ./.* /usr/src/app/
RUN npm cache clean --force
RUN npm install
EXPOSE 3000
CMD [ "npm", "run", "build"] 
