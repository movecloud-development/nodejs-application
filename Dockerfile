#using the official node runtime as base image
FROM node:14
#set the working directory inside the container
WORKDIR /app/nodewebapp
#copy the application json file into the container's working directory
COPY package*.json /app/nodewebapp
#installing the dependencies
RUN npm install
#cpying the current host directory into containers current directory(/app/nodewebapp)
COPY . .
#exposing the application port, inside the container.
EXPOSE 3001
#command for running the application
CMD [ "node", "src/index.js" ]