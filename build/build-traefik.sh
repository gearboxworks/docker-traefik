#!/bin/bash
# Created on 2020-02-17T20:40:58+1100, using template:build-traefik.sh.tmpl and json:traefik-1.7.20.json

# See gearboxworks/gearbox-base for details.
. /build/include-me.sh

c_ok "Started."

c_ok "Installing packages."
if [ -f /build/build-traefik.apks ]
then
	APKS="$(cat /build/build-traefik.apks)"
	apk update && apk add --no-cache ${APKS}; checkExit
fi

if [ -f /build/build-traefik.env ]
then
	. /build/build-traefik.env
fi

if [ ! -d /usr/local/bin ]
then
	mkdir -p /usr/local/bin; checkExit
fi

c_ok "Finished."
