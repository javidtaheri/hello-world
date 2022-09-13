# sudo docker build . --tag hello-world:v1
# sudo docker tag hello-world:v1 javidtaheri/simple-programs-hello-world:v1
# sudo docker login --username javidtaheri --password Hadis12345
# sudo docker push javidtaheri/simple-programs-hello-world:v1
# sudo docker run --publish 3000:3000 --name simple-programs-hello-world:v1 --rm javidtaheri/simple-programs-hello-world:v1
# sudo docker ps
# sudo docker stop simple-programs-hello-world

FROM node:15

# Create app directory
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

RUN npm install

# Bundle app source
COPY hello-world.js .

EXPOSE 3000

CMD [ "node", "hello-world.js" ]
