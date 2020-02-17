#!/bin/bash
# Created on 2020-02-17T20:40:58+1100, using template:01-base.sh.tmpl and json:traefik-1.7.20.json

# See gearboxworks/gearbox-base for details.
. /build/include-me.sh

c_ok "Gearbox[traefik]: Release test started."

if id -u gearbox
then
	c_ok "Gearbox[traefik]: Gearbox user found."
else
	c_err "Gearbox[traefik]: Gearbox user NOT found."
fi

if id -g gearbox
then
	c_ok "Gearbox[traefik]: Gearbox group found."
else
	c_err "Gearbox[traefik]: Gearbox group NOT found."
fi

c_ok "Gearbox[traefik]: Release test finished."

