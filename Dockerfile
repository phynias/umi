FROM node:8.9.4
WORKDIR /usr/src/app
ADD . /usr/src/app
RUN apt-get update && apt-get install -y nginx
RUN ln -s /usr/src/app/umi-nginx.conf /etc/nginx/sites-enabled/ && rm -fr /etc/nginx/sites-enabled/default
RUN npm cache clean --force
RUN npm install
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
