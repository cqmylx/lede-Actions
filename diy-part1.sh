# 此脚本用处是：添加第三方插件
#git clone https://github.com/ujincn/smartdns.git ./package/lean/smartdns
#git clone https://github.com/ujincn/luci-app-smartdns-compat.git ./package/lean/luci-app-smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns

# 添加OpenClash插件
echo "src-git openclash https://github.com/vernesong/openclash" >> "feeds.conf.default"

# 添加ShadowSocksR Plus+插件
echo "src-git helloworld https://github.com/fw876/helloworld.git" >> "feeds.conf.default"

# 添加PowerOff关机插件
#git clone https://github.com/esirplayground/luci-app-poweroff.git package/luci-app-poweroff

# 添加OpenTomcat主题
#git clone https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat

# 添加PassWall插件
echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> "feeds.conf.default"
echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"
