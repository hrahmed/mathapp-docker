#!/bin/bash

# init agent
NODE_DIR=/usr/lib/node_modules

if [ -e /usr/local/lib/node_modules/ca-apm-probe/config.json ]
then
    NODE_DIR=/usr/local/lib/node_modules
fi

sed -Ei "s/localhost/$COLLECTOR_AGENT_HOST/" $NODE_DIR/ca-apm-probe/config.json
sed -Ei "s/5005/$COLLECTOR_AGENT_PORT/" $NODE_DIR/ca-apm-probe/config.json
#sed -Ei 's/"workerIdEnvKey":""/"workerIdEnvKey":"HOSTNAME"/' $NODE_DIR/ca-apm-probe/config.json
#sed -Ei 's/"probeNameEnvKey": ""/"probeNameEnvKey": "HOSTNAME"/' $NODE_DIR/ca-apm-probe/config.json
#sed -Ei 's/"probeName": ""/"probeName": "${APP_NAME}-${HOSTNAME}"/' $NODE_DIR/ca-apm-probe/config.json


#sed -Ei 's/localhost/collector/' /src/node_modules/ca-apm-probe/config.json

# workaround to connect multiple probes with the same pid from different hosts/containers
#sed -Ei 's/var pid = process.pid;/var pid = process.pid; var hostname = process.env.HOSTNAME;/' $NODE_DIR/ca-apm-probe/lib/arf-client.js
#sed -Ei 's/instid: pid/instid: hostname + pid/' $NODE_DIR/ca-apm-probe/lib/arf-client.js

ca-apm-run /usr/src/app/bin/www
