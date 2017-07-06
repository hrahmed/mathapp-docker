#!/bin/sh
#

SCRIPT_DIR=/opt/scripts
LOG_DIR=.

JMETER_DIR=/opt/apache-jmeter-3.1

sed -Ei "s/localhost/$CLIENT_HOST/g" ${SCRIPT_DIR}/${SCRIPT}
sed -Ei "s/3000/$CLIENT_PORT/" ${SCRIPT_DIR}/${SCRIPT}

${JMETER_DIR}/bin/jmeter.sh -n -t ${SCRIPT_DIR}/${SCRIPT} -j ${LOG_DIR}/jmeter-${SCRIPT}.log 1>/dev/null
# -l ${LOG_DIR}/${SCRIPT}.jtl
