FROM node:alpine

COPY package*.json ./

RUN npm install

COPY server.js .

EXPOSE 80

CMD [ "npm" , "start" ]


