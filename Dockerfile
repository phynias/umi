# Developpment stage
FROM node:12-alpine
RUN apk update
RUN apk add --no-cache python3 make g++
RUN apk add --no-cache libc6-compat
RUN apk add --no-cache libstdc++ &&  apk add --no-cache libgcc
WORKDIR /usr/src/app
ADD . /usr/src/app
RUN npm cache clean --force
RUN npm install
EXPOSE 3000
CMD [ "npm", "run", "build"] 
