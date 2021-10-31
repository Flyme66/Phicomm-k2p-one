#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Modify default IP
sed -i 's/192.168.1.1/192.168.50.1/g' package/base-files/files/bin/config_generate


sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 修改密码为空，自定义名称
ZZZ="package/default-settings/files/zzz-default-settings"
sed -i '/CYXluq4wUazHjmCDBCqXF/d' $ZZZ

sed -i 's/set wireless.default_radio${devidx}.ssid=OpenWrt/set wireless.default_radio0.ssid=Phicomm-k2p_5G/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

sed -i '/set wireless.default_radio0.ssid=Phicomm-k2p_5G/a\ set wireless.default_radio1.ssid=Phicomm-k2p' package/kernel/mac80211/files/lib/wifi/mac80211.sh

#git clone https://github.com/small-5/luci-app-adblock-plus.git package/lean/luci-app-adblock-plus

#git clone https://github.com/wiwizcom/WiFiPortal.git package/lean/wifidog-wiwiz

#git clone https://github.com/fw876/helloworld package/lean/luci-app-ssr-plus

#git clone https://github.com/xiaorouji/openwrt-passwall package/lean/luci-app-passwall
