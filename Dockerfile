# Developpment stage
FROM node:8
WORKDIR /usr/src/app
ADD . /usr/src/app
RUN npm cache clean --force
RUN npm i --package-lock-only && npm audit fix
RUN npm install
EXPOSE 3000
CMD [ "npm", "run", "build"] 
