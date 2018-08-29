FROM node:8-alpine

RUN apk add --update git bash nodejs nodejs-npm perl yarn

RUN cd /root &&\
    git clone https://github.com/cubedro/eth-net-intelligence-api &&\
    cd eth-net-intelligence-api &&\
    npm install &&\
    npm install -g pm2

RUN echo '#!/bin/bash\nset -e\n\ncd /root/eth-net-intelligence-api\n/usr/bin/pm2 start ./app.json\ntail -f \
    /root/.pm2/logs/node-app-out-0.log' > /root/start.sh

RUN chmod +x /root/start.sh

ADD app.json /root/eth-net-intelligence-api/app.json

ENTRYPOINT /root/start.sh
