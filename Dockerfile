FROM node:18

WORKDIR /app

COPY ./package.json /app

# install npm dependencies
RUN npm install

# copy other project files
COPY . .

EXPOSE 3000

# build the folder
CMD [ "npm", "run", "start" ]