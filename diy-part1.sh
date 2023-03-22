#!/bin/bash
#=============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=============================================================


sed -i 's/KERNEL_PATCHVER:=5.10/KERNEL_PATCHVER:=6.1/g' ./target/linux/x86/Makefile
sed -i 's/KERNEL_PATCHVER:=5.15/KERNEL_PATCHVER:=6.1/g' ./target/linux/x86/Makefile
sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=6.1/g' ./target/linux/x86/Makefile
sed -i 's/KERNEL_TESTING_PATCHVER:=5.10/KERNEL_TESTING_PATCHVER:=6.1/g' ./target/linux/x86/Makefile

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

#git clone https://github.com/rufengsuixing/luci-app-adguardhome ./package/lean/luci-app-adguardhome
#git clone https://github.com/ujincn/smartdns.git ./package/lean/smartdns
#git clone https://github.com/ujincn/luci-app-smartdns-compat.git ./package/lean/luci-app-smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
git clone https://github.com/fw876/helloworld.git package/ssr
git clone https://github.com/firker/diy-ziyong.git package/diy-ziyong
git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
git clone -b luci https://github.com/xiaorouji/openwrt-passwall package/passwall
git clone https://github.com/sbwml/luci-app-mosdns package/mosdns
#wget https://github.com/vernesong/OpenClash/archive/master.zip  #下载OpenClash
#unzip master.zip  #解压
#cp -r OpenClash-master/luci-app-openclash package  #复制OpenClash软件包到OpenWrt
#git clone https://github.com/garypang13/luci-app-dnsfilter.git ./package/lean/luci-app-dnsfilter
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git ./package/lean/luci-app-jd-dailybonus
