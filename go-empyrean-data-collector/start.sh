#!/bin/bash
cd /root/eth-net-intelligence-api
/usr/local/bin/pm2 start ./app.json
tail -f /root/.pm2/logs/node-app-out-0.log
