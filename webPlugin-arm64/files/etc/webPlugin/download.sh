#!/bin/bash
[ -f "/etc/openclash/core/clash_tun" ] || {
		wget http://files.sd-web.top:33626/openclashCore-arm64.tar.gz -O /tmp/openclashCore-arm64.tar.gz

		[ -f "/tmp/openclashCore-arm64.tar.gz" ] && {
            mkdir -p /tmp/new
            mkdir -p /etc/openclash/core/
			tar -zxvf /tmp/openclashCore-arm64.tar.gz -C /tmp/new/
            cp /tmp/new/openclashCore-arm64/* /etc/openclash/core/
		}
		
		rm -f /tmp/openclashCore-arm64.tar.gz
		
}
