#!/bin/sh

# 列出所有dns_servers配置段并删除
for config in $(uci show openclash | grep 'config_subscribe' | cut -d'.' -f2 | cut -d'=' -f1 | sort -u); do
    uci delete openclash.@config_subscribe[0] # 每次都是0，因此删除掉0后，后面的又会补上0的位置
done

# 保存并应用配置
uci commit openclash