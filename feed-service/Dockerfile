FROM node:12

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY ./www ./

EXPOSE 8082


CMD ["npm", "start"]