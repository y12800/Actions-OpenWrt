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

#sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/lean/default-settings/files/zzz-default-settings    # 设置密码为空

# Modify default theme（FROM uci-theme-bootstrap CHANGE TO luci-theme-material）
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile

# Modify some code adaptation
#sed -i 's/LUCI_DEPENDS.*/LUCI_DEPENDS:=\@\(arm\|\|aarch64\)/g' feeds/luci/applications/luci-app-cpufreq/Makefile

# Set DISTRIB_REVISION
sed -i "s/OpenWrt /Deng Build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

# Modify default IP（FROM 192.168.1.1 CHANGE TO 10.10.10.1）
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# Modify system hostname（FROM OpenWrt CHANGE TO OpenWrt-N1）
# sed -i 's/OpenWrt/OpenWrt-N1/g' package/base-files/files/bin/config_generate

# Replace the default software source
# sed -i 's#openwrt.proxy.ustclug.org#mirrors.bfsu.edu.cn\\/openwrt#' package/lean/default-settings/files/zzz-default-settings

sed -i 's/invalid users = root/#invalid users = root/g' feeds/packages/net/samba4/files/smb.conf.template

# 更改内核版本
# sed -i 's#^.*KERNEL_PATCHVER:=.*$#KERNEL_PATCHVER:=5.4#' target/linux/x86/Makefile


# 拉取软件包

git clone https://github.com/vernesong/OpenClash.git package/OpenClash
git clone https://github.com/pymumu/openwrt-smartdns package/smartdns
git clone -b lede https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
git clone https://github.com/kenzok8/small-package package/small-package
git clone -b luci https://github.com/pexcn/openwrt-chinadns-ng.git package/luci-app-chinadns-ng
svn co https://github.com/immortalwrt-collections/openwrt-gowebdav/trunk/luci-app-gowebdav package/luci-app-gowebdav
svn co https://github.com/immortalwrt-collections/openwrt-gowebdav/trunk/gowebdav package/gowebdav
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/luci-app-unblockneteasemusic
svn co https://github.com/kiddin9/openwrt-packages/trunk/UnblockNeteaseMusic-Go package/UnblockNeteaseMusic-Go
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-unblockneteasemusic-go package/luci-app-unblockneteasemusic-go


# 删除重复包

# rm -rf feeds/luci/applications/luci-app-netdata
rm -rf feeds/luci/themes/luci-theme-argon
rm -rf package/small-package/luci-app-openvpn-server
rm -rf package/small-package/openvpn-easy-rsa-whisky
rm -rf package/small-package/luci-app-wrtbwmon
rm -rf package/small-package/wrtbwmon
rm -rf package/small-package/luci-app-koolproxyR
rm -rf package/small-package/luci-app-godproxy
rm -rf package/small-package/luci-app-argon*
rm -rf package/small-package/luci-theme-argon*
# rm -rf package/small-package/luci-app-amlogic
rm -rf package/small-package/luci-app-unblockneteasemusic


# 其他调整
NAME=$"package/luci-app-unblockneteasemusic/root/usr/share/unblockneteasemusic" && mkdir -p $NAME/core
curl 'https://api.github.com/repos/UnblockNeteaseMusic/server/commits?sha=enhanced&path=precompiled' -o commits.json
echo "$(grep sha commits.json | sed -n "1,1p" | cut -c 13-52)">"$NAME/core_local_ver"
curl -L https://github.com/UnblockNeteaseMusic/server/raw/enhanced/precompiled/app.js -o $NAME/core/app.js
curl -L https://github.com/UnblockNeteaseMusic/server/raw/enhanced/precompiled/bridge.js -o $NAME/core/bridge.js
curl -L https://github.com/UnblockNeteaseMusic/server/raw/enhanced/ca.crt -o $NAME/core/ca.crt
curl -L https://github.com/UnblockNeteaseMusic/server/raw/enhanced/server.crt -o $NAME/core/server.crt
curl -L https://github.com/UnblockNeteaseMusic/server/raw/enhanced/server.key -o $NAME/core/server.key

sed -i 's#mount -t cifs#mount.cifs#g' feeds/luci/applications/luci-app-cifs-mount/root/etc/init.d/cifs

#sed -i 's#<%+cbi/tabmenu%>##g' package/small-packages/luci-app-nginx-manager/luasrc/view/nginx-manager/index.htm
