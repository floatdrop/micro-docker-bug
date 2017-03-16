FROM node:6.5.0
ADD . /app
WORKDIR /app
EXPOSE 3000
RUN npm install --silent --global http://github.com/zeit/micro/tarball/master 
RUN npm install --silent
CMD ["npm", "start"]
