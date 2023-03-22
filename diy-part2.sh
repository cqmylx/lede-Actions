#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
#sed -i 's/192.168.1.1/192.168.1.2/g' package/base-files/files/bin/config_generate
sed -i 's/OpenWrt/LEDE/g' package/base-files/files/bin/config_generate
sed -i 's/set luci.main.mediaurlbase/#set luci.main.mediaurlbase/g' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
sed -i "/CYXluq4wUazHjmCDBCqXF/d" package/lean/default-settings/files/zzz-default-settings

sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile
rm -rf ./package/diy-ziyong/theme
rm -rf ./package/diy-ziyong/luci-app-wrtbwmon-zh
rm -rf ./package/diy-ziyong/wrtbwmon
# rm -rf ./package/diy-ziyong/adguardhome
rm -rf ./feeds/packages/net/adguardhome
rm -rf ./feeds/packages/net/smartdns
rm -rf ./feeds/packages/net/mosdns
rm -rf ./feeds/luci/applications/luci-app-passwall
rm -rf ./feeds/luci/applications/luci-app-ssr-plus
rm -rf ./feeds/luci/applications/luci-app-openclash
rm -rf ./feeds/luci/applications/luci-app-smartdns
# rm -rf ./feeds/luci/applications/luci-app-adbyby-plus
