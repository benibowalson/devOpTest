FROM node
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app
#RUN npm cache clean
RUN npm install
#we could use volume mapping instead of copy
COPY . /usr/src/app
EXPOSE 3000
CMD ["npm", "start"]