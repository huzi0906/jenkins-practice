# syntax=docker/dockerfile:1

ARG NODE_VERSION=20.5.1

FROM node:${NODE_VERSION}-alpine

ENV NODE_ENV production

WORKDIR /app/

COPY . .

RUN npm install
RUN npm run build

EXPOSE 3000

CMD npm start
