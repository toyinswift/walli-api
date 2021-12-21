# Use a node 12 base image
ARG NODE_VERSION=12
FROM node:${NODE_VERSION}-alpine

WORKDIR /app

# Copy package.json and install node modules
COPY package.json .
RUN npm install
ENV PORT 8080

# Add app source code
ADD . /app

ENTRYPOINT npm start run
