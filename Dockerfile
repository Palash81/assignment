# This is from the node Image
FROM node:19-alpine3.16

# The is the directory where the application be copied
WORKDIR /app

# The will copy json package
COPY package.json /app/

RUN npm install 

COPY . /app

# This command will run npm inside the container
CMD [ "npm", "start" ] 

EXPOSE 3000