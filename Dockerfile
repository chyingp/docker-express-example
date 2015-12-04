FROM ubuntu:14.04
MAINTAINER chyingp <416394284@qq.com>
RUN apt-get -qq update
RUN apt-get -qqy install curl
RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN apt-get install -y nodejs
RUN npm install -g express
RUN mkdir -p /var/web
WORKDIR /var/web
RUN express
RUN npm install
CMD ["node", "app.js"]
RUN echo "express installed successfully!"