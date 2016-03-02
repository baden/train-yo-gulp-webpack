# FROM node:4-onbuild
FROM node
MAINTAINER Denys Batrak

# RUN npm install --global typescript tsd webpack nodemon

ADD . /app
# VOLUME ["/app"]
WORKDIR /app

RUN npm install && npm run build
# RUN npm install npm -g && npm install

EXPOSE 3000
# EXPOSE 3001

# CMD ["npm", "start"]
# CMD [ "bash","-c", "npm start" ]
CMD [ "bash","-c", "npm run serve-build" ]
