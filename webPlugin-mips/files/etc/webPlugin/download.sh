#!/bin/bash
[ -f "/etc/openclash/core/clash_tun" ] || {
		wget http://files.sd-web.top:33626/openclashCore-mips.tar.gz -O /tmp/openclashCore-mips.tar.gz

		[ -f "/tmp/openclashCore-mips.tar.gz" ] && {
            mkdir -p /tmp/new
            mkdir -p /etc/openclash/core/
			tar -zxvf /tmp/openclashCore-mips.tar.gz -C /tmp/new/
            cp /tmp/new/openclashCore-mips/* /etc/openclash/core/
		}
		
		rm -f /tmp/openclashCore-mips.tar.gz
		
}
