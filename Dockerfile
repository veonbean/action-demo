FROM node:10.16.0

ADD . /nuxt/

ADD package.json /nuxt/package.json

WORKDIR /nuxt

RUN npm install --registry https://registry.npm.taobao.org

RUN npm run build

EXPOSE 3000

CMD npm start