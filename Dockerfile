FROM node:carbon

MAINTAINER Dao Anh Dung <dung13890@gmail.com>

ENV TERM xterm

RUN npm install -g \
    react-native-cli \
    bower

RUN apt-get -qq update && apt-get -qq -y install curl
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install yarn

CMD ["node"]

WORKDIR /var/www/app

EXPOSE 8080
