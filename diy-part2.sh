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
#sed -i "/CYXluq4wUazHjmCDBCqXF/d" package/emortal/default-settings/files/99-default-settings
#sed -i "s/auto/'zh_cn'/g" feeds/luci/modules/luci-base/root/etc/config/luci
#sed -i "/config internal languages/a\option zh_cn '简体中文 (Simplified Chinese)'\noption en  'English'" feeds/luci/modules/luci-base/root/etc/config/luci
#sed -i "s/config internal languages/config internal languages\noption zh_cn '简体中文 (Simplified Chinese)'\noption en  'English'/g" feeds/luci/modules/luci-base/root/etc/config/luci


# 此脚本用处是：定制个性化固件


# 更改默认主题
#sed -i 's/bootstrap/opentomcat/g' ./feeds/luci/collections/luci/Makefile
sed -i "s/set_opt main.mediaurlbase/#set_opt main.mediaurlbase/g" feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
sed -i 's/Bootstrap Theme (default)/Bootstrap Theme/g' ./feeds/luci/themes/luci-theme-bootstrap/Makefile
sed -i 's/LuCI modern OpenWrt theme/LuCI modern OpenWrt theme (default)/g' ./feeds/luci/themes/luci-theme-openwrt-2020/Makefile

# 指定内核版本
#sed -i 's/KERNEL_PATCHVER:=6.1/KERNEL_PATCHVER:=5.15/g' ./target/linux/x86/Makefile

# 更改管理地址
#sed -i 's/192.168.1.1/192.168.2.251/g' package/base-files/files/bin/config_generate

# 设置密码为空
#sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/lean/default-settings/files/zzz-default-settings

# 设置时间格式
#sed -i 's/os.date()/os.date("%Y-%m-%d %H:%M:%S")/g' package/lean/autocore/files/*/index.htm

# 只显示处理器信息
#sed -i 's/${g}.*/${a}${b}${c}${d}${e}${f}${hydrid}/g' package/lean/autocore/files/x86/autocore
