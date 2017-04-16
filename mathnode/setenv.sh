#!/bin/bash

# set EM host and port
sed -Ei "s/agentManager.url.1=.*/agentManager.url.1=${EM_HOST}:${EM_PORT}/" $WILY_HOME/core/config/IntroscopeAgent.profile

# agent properties
sed -Ei 's/introscope.agent.deep.instrumentation.level=low/introscope.agent.deep.instrumentation.level=high/' $WILY_HOME/core/config/IntroscopeAgent.profile
sed -Ei 's/introscope.agent.remoteagentdynamicinstrumentation.enabled=false/introscope.agent.remoteagentdynamicinstrumentation.enabled=true/' $WILY_HOME/core/config/IntroscopeAgent.profile

# set agent hostname
if [ -n "$AGENT_HOSTNAME" ]; then
    AGENT_HOSTNAME_ARG="-Dintroscope.agent.hostName=${AGENT_HOSTNAME}"
else
    AGENT_HOSTNAME_ARG=""
fi
