#!/bin/sh

#添加clash订阅地址，并且拉起openclash

# 配置订阅地址
uci add openclash config_subscribe
uci set openclash.@config_subscribe[0].enabled='1'
uci set openclash.@config_subscribe[0]=config_subscribe
uci set openclash.@config_subscribe[0].name='openwrt_clash'
#uci set openclash.@config_subscribe[0].address='https://dawson0207.xn--3iq226gfdb94q.com/api/v1/client/subscribe?token=577ea451b640cb802b44ca340a3151a6'
uci set openclash.@config_subscribe[0].address=$1
uci set openclash.@config_subscribe[0].sub_ua='Clash'
uci set openclash.@config_subscribe[0].sub_convert='0'

#启用openclash
uci set openclash.config.enable='1'
uci set openclash.config.config_path='/etc/openclash/config/openwrt_clash.yaml'

#配置保存
uci commit openclash

# 拉起openclash
/usr/share/openclash/openclash.sh


