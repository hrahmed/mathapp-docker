#!/bin/sh
# This runs a container in default mode. Note that this expects that the apm-postgres already is started. If you can you should rather use docker-compose (there are some scripts at top level).

exec docker run -d \
	-p 8088:8088 \
	--name=mathapp-java \
	mathapp-java:1
