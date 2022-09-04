FROM node:16.13.1-alpine
WORKDIR /app
# COPY package.json .
COPY . /app
RUN npm install
COPY . .
EXPOSE 3000
CMD "node" "index.mjs"

