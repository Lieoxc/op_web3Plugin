#!/bin/bash
[ -f "/etc/openclash/core/clash_tun" ] || {
		wget http://files.sd-web.top:33626/openclashCore.tar.gz -O /tmp/openclashCore.tar.gz

		[ -f "/tmp/openclashCore.tar.gz" ] && {
            mkdir -p /tmp/new
            mkdir -p /etc/openclash/core/
			tar -zxvf /tmp/openclashCore.tar.gz -C /tmp/new/
            cp /tmp/new/openclashCore/* /etc/openclash/core/
		}
		
		rm -f /tmp/openclashCore.tar.gz
		
}
