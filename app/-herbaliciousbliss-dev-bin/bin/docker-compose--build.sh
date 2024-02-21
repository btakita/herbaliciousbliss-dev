#!/bin/sh

_env__validate
RC=$?
if [ $RC -ne 0 ] ; then
	exit $RC
fi
docker compose -p herbaliciosbliss -f d.herbaliciosbliss.docker-compose.yml --project-directory . build
