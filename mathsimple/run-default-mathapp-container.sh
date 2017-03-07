#!/bin/sh
# This runs a container in default mode. Note that this expects that the apm-postgres already is started. If you can you should rather use docker-compose (there are some scripts at top level).

exec docker run -d \
	-p 8092:8092 \
	--name=mathsimple-java \
	mathsimple-java:1
