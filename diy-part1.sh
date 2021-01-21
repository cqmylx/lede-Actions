#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

git clone https://github.com/rufengsuixing/luci-app-adguardhome ./package/lean/luci-app-adguardhome
git clone https://github.com/ujincn/smartdns.git ./package/lean/smartdns
git clone https://github.com/ujincn/luci-app-smartdns-compat.git ./package/lean/luci-app-smartdns
#wget https://github.com/vernesong/OpenClash/archive/master.zip  #下载OpenClash
#unzip master.zip  #解压
#cp -r OpenClash-master/luci-app-openclash package  #复制OpenClash软件包到OpenWrt
