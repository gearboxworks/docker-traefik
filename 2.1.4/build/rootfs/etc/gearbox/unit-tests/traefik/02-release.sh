#!/bin/bash
# Created on 2020-02-17T20:40:58+1100, using template:02-release.sh.tmpl and json:traefik-2.1.4.json

# See gearboxworks/gearbox-base for details.
. /build/include-me.sh

c_ok "Gearbox[traefik-2.1.4]: Release test started."

if id -u gearbox
then
	c_ok "Gearbox[traefik-2.1.4]: Gearbox user found."
else
	c_err "Gearbox[traefik-2.1.4]: Gearbox user NOT found."
fi

if id -g gearbox
then
	c_ok "Gearbox[traefik-2.1.4]: Gearbox group found."
else
	c_err "Gearbox[traefik-2.1.4]: Gearbox group NOT found."
fi

c_ok "Gearbox[traefik-2.1.4]: Release test finished."

