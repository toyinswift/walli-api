# Use a node 12 base image
ARG NODE_VERSION=12
FROM node:${NODE_VERSION}-alpine

WORKDIR /app

# Copy package.json and install node modules
COPY package.json .
RUN npm install

# Add app source code
ADD . /usr/src/app

ENTRYPOINT npm run start
