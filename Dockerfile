FROM node:14-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

#RUN npm run build

EXPOSE 3231
CMD [ "npm", "run", "server" ]
