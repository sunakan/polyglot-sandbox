FROM node:12-slim
WORKDIR /var/local/app/

RUN npm install -g typescript ts-node
