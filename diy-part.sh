#!/bin/bash

sed -i 's/https://git.openwrt.org/feed/packages.git;openwrt-24.10/https://github.com/coolsnowwolf/packages/g' feeds.conf.default
sed -i 's/https://git.openwrt.org/project/luci.git;openwrt-24.10/https://github.com/coolsnowwolf/luci.git;openwrt-23.05/g' feeds.conf.default
sed -i 's/https://git.openwrt.org/feed/routing.git;openwrt-24.10/https://github.com/coolsnowwolf/routing/g' feeds.conf.default
sed -i 's/https://git.openwrt.org/feed/telephony.git;openwrt-24.10/https://github.com/coolsnowwolf/telephony.git/g' feeds.conf.default





echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages' >>feeds.conf.default

# echo 'src-git packages https://github.com/coolsnowwolf/packages' >>feeds.conf.default
# # echo 'src-git luci https://github.com/coolsnowwolf/luci' >>feeds.conf.default
# echo 'src-git luci https://github.com/coolsnowwolf/luci.git;openwrt-23.05' >>feeds.conf.default
# echo 'src-git routing https://github.com/coolsnowwolf/routing' >>feeds.conf.default
# echo 'src-git telephony https://github.com/coolsnowwolf/telephony.git' >>feeds.conf.default
