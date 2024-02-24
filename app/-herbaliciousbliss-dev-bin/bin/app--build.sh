#!/bin/sh

_env__validate
RC=$?
if [ $RC -ne 0 ] ; then
	exit $RC
fi
bun i
(cd app/herbaliciousbliss-site && NODE_ENV=production bun -b run build)
