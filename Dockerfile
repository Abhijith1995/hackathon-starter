FROM node:12-slim

WORKDIR /
ENV NODE_ENV development

COPY package.json /package.json

RUN npm install --production

COPY .env.example /.env.example
COPY . /

CMD ["npm","start"]

EXPOSE 8080
