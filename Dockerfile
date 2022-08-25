FROM node:16.13.1-alpine
# WORKDIR .
COPY package.json .
# RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz \
#   && tar xzvf docker-17.04.0-ce.tgz \
#   && mv docker/docker /usr/local/bin \
#   && rm -r docker docker-17.04.0-ce.tgz
RUN npm install
COPY . .
EXPOSE 3000
CMD "node" "index.js"

