# Developpment stage
FROM node:16
WORKDIR /usr/src/app
ADD . /usr/src/app
RUN npm cache clean --force
RUN npm install
EXPOSE 3000
CMD [ "npm", "run", "build"] 
