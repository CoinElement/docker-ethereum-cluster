FROM node:8-alpine

RUN apk add --update git

RUN git clone https://github.com/cubedro/eth-netstats

WORKDIR /eth-netstats

RUN yarn install
RUN yarn global add grunt-cli
RUN grunt

EXPOSE 3000

CMD ["yarn", "start"]
