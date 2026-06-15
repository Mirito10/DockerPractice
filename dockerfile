FROM node

WORKDIR /dockerfolder

COPY package.json /dockerfolder

RUN npm install

COPY . /dockerfolder

EXPOSE 80

CMD ["node", "server.js"]