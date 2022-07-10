FROM node:14
WORKDIR /usr/src/app
ADD . /usr/src/app
#RUN apt-get update && apt-get install -y nginx
#RUN ln -s /usr/src/app/umi-nginx.conf /etc/nginx/sites-enabled/ && rm -fr /etc/nginx/sites-enabled/default
#RUN npm i npm@latest -g
RUN npm cache clean --force
RUN npm install
#RUN npm run build
EXPOSE 8080
CMD ["npm", "run", "dev"]
