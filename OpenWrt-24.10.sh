#!/bin/bash


rm -rf feeds/luci/applications/luci-app-dockerman
rm -rf feeds/luci/applications/luci-app-filebrowser
rm -rf feeds/luci/applications/luci-app-ddns
rm -rf feeds/packages/net/ddns-scripts
#rm -rf feeds/luci/applications/luci-app-acme
#rm -rf feeds/packages/net/acme
#rm -rf feeds/packages/net/acme-acmesh
#rm -rf feeds/packages/net/acme-common
rm -rf feeds/packages/net/zerotier
# rm -rf feeds/packages/net/speedtest-go
# rm -rf feeds/packages/net/socat
# rm -rf feeds/luci/applications/luci-i18n-filebrowser-zh-cn

# git clone --depth 1 https://github.com/vison-v/luci-app-nginx-proxy package/luci-app-nginx-proxy
# git clone --depth 1 https://github.com/Vera2016/luci-app-nginx-manager package/luci-app-nginx-manager

# git clone --depth 1 https://github.com/immortalwrt-collections/luci-theme-neobird package/deng/luci-theme-neobird

git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall-packages.git package/openwrt-passwall-packages

git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon.git package/deng/luci-theme-argon
git clone --depth 1 https://github.com/jerrykuku/luci-app-argon-config package/deng/luci-app-argon-config

git clone --depth 1 https://github.com/derisamedia/luci-theme-alpha package/deng/luci-theme-alpha
git clone --depth 1 https://github.com/derisamedia/luci-app-alpha-config package/deng/luci-app-alpha-config
# git clone --depth 1 https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/deng/luci-app-unblockneteasemusic
# git clone --depth 1 https://github.com/sirpdboy/netspeedtest.git package/deng/netspeedtest
# git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall package/deng/luci-app-passwall
# git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall2 package/deng/luci-app-passwall2
# git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall-packages.git package/deng/passwall-packages
# git clone --depth 1 https://github.com/sbwml/luci-app-alist package/deng/luci-app-alist
git clone --depth 1 https://github.com/kenzok78/luci-app-adguardhome package/deng/luci-app-adguardhome
# git clone --depth 1 https://github.com/zzsj0928/luci-app-pushbot package/deng/luci-app-pushbot
git clone --depth 1 https://github.com/sirpdboy/luci-app-ddns-go package/deng/luci-app-ddns-go
# git clone --depth 1 https://github.com/Jason6111/luci-app-netdata package/deng/luci-app-netdata
# git clone --depth 1 https://github.com/esirplayground/luci-app-poweroff package/deng/luci-app-poweroff
git clone --depth 1 https://github.com/tty228/luci-app-wechatpush.git package/deng/luci-app-wechatpush


git clone --depth 1 https://github.com/lisaac/luci-app-dockerman package/deng/luci-app-dockerman

# git clone --depth 1 https://github.com/vernesong/OpenClash package/deng/luci-app-openclash
# git clone --depth 1 https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/deng/luci-theme-opentomcat
git clone --depth 1 https://github.com/sirpdboy/luci-app-lucky.git package/deng/luci-app-lucky
# git clone --depth 1 https://github.com/y12800/luci-app-filebrowser package/filebrowser
git clone --depth 1 https://github.com/xiaozhuai/luci-app-filebrowser package/luci-app-filebrowser
# git clone --depth 1 https://github.com/danchexiaoyang/luci-app-kodexplorer package/luci-app-kodexplorer
git clone --depth 1 https://github.com/danchexiaoyang/luci-app-kodexplorer package/luci-app-kodexplorer && chmod -R 755 package/luci-app-kodexplorer

# git clone --depth 1 https://github.com/sbwml/openwrt-filebrowser package/luci-app-filebrowser
# git clone --depth 1 https://github.com/sbwml/openwrt-filebrowser package/filebrowser

git clone --depth 1 https://github.com/vernesong/OpenClash.git package/OpenClash
git clone --depth 1 https://github.com/pymumu/openwrt-smartdns package/smartdns
git clone --depth 1 https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
# git clone --depth 1 https://github.com/sirpdboy/luci-app-parentcontrol package/deng/luci-app-parentcontrol
git clone --depth 1 https://github.com/sirpdboy/luci-app-cupsd.git package/deng/luci-app-cupsd
# git clone --depth 1 https://github.com/y12800/zerotier package/deng/zerotier
git clone --depth 1 https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
sed -i 's/EXTRA_CFLAGS:=.*/& -Wno-error=misleading-indentation/' package/OpenAppFilter/oaf/Makefile
# git clone --depth 1 https://github.com/zhengmz/luci-app-zerotier.git package/luci-app-zerotier
# git clone --depth 1 https://github.com/0x676e67/luci-app-watchcat-plus package/luci-app-watchcat-plus
# git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld
# git clone --depth 1 https://github.com/ZeaKyX/luci-app-speedtest-web package/deng/luci-app-speedtest-web
# git clone --depth 1 https://github.com/ZeaKyX/speedtest-web.git package/deng/speedtest-web
# git clone --depth 1 https://github.com/librespeed/speedtest-go.git package/deng/speedtest-go
# git clone --depth 1 https://github.com/ZeaKyX/speedtest-go.git package/deng/speedtest-go

git clone --depth 1 -b openwrt-24.10 https://github.com/immortalwrt/luci deng-tmp1 && mv deng-tmp1/applications/luci-app-ddns package/deng/luci-app-ddns
sed -i 's#../../#$(TOPDIR)/feeds/luci/#g' package/deng/luci-app-ddns/Makefile
git clone --depth 1 -b openwrt-24.10 https://github.com/immortalwrt/packages deng-tmp2 && mv deng-tmp2/net/ddns-scripts package/deng/ddns-scripts && mv deng-tmp2/net/ddns-scripts_aliyun package/deng/ddns-scripts_aliyun && mv deng-tmp2/net/ddns-scripts_dnspod package/deng/ddns-scripts_dnspod
sed -i 's#../../#$(TOPDIR)/feeds/packages/#g' package/deng/ddns-scripts/Makefile
sed -i 's#../../#$(TOPDIR)/feeds/packages/#g' package/deng/ddns-scripts_aliyun/Makefile
sed -i 's#../../#$(TOPDIR)/feeds/packages/#g' package/deng/ddns-scripts_dnspod/Makefile

# git clone --depth 1 https://github.com/immortalwrt-collections/luci-app-diskman.git package/deng/luci-app-diskman
git clone --depth 1 https://github.com/lisaac/luci-app-diskman.git package/deng/luci-app-diskman

# git clone --depth 1 https://github.com/coolsnowwolf/luci deng-tmp1 && mv deng-tmp1/applications/luci-app-diskman package/deng/luci-app-diskman
# sed -i 's#../../#$(TOPDIR)/feeds/luci/#g' package/deng/luci-app-diskman/Makefile

git clone --depth 1 https://github.com/coolsnowwolf/luci deng-tmp3 && mv deng-tmp3/applications/luci-app-zerotier package/deng/luci-app-zerotier
sed -i 's#../../#$(TOPDIR)/feeds/luci/#g' package/deng/luci-app-zerotier/Makefile
git clone --depth 1 https://github.com/coolsnowwolf/packages deng-tmp4 && mv deng-tmp4/net/zerotier package/deng/zerotier
sed -i 's#../../#$(TOPDIR)/feeds/packages/#g' package/deng/zerotier/Makefile

# git clone --depth 1 https://github.com/immortalwrt/luci deng-tmp4 && mv deng-tmp4/applications/luci-app-acme package/deng/luci-app-acme
# sed -i 's#../../#$(TOPDIR)/feeds/luci/#g' package/deng/luci-app-acme/Makefile

# git clone --depth 1 https://github.com/immortalwrt/packages deng-tmp5 && mv deng-tmp5/net/acme package/deng/acme && mv deng-tmp5/net/acme-acmesh package/deng/acme-acmesh && mv deng-tmp5/net/acme-common package/deng/acme-common    
# sed -i 's#../../#$(TOPDIR)/feeds/packages/#g' package/deng/acme/Makefile
# sed -i 's#../../#$(TOPDIR)/feeds/packages/#g' package/deng/acme-acmesh/Makefile
# sed -i 's#../../#$(TOPDIR)/feeds/packages/#g' package/deng/acme-common/Makefile


git clone --depth 1 https://github.com/coolsnowwolf/luci deng-tmp6 && mv deng-tmp6/applications/luci-app-socat package/deng/luci-app-socat
sed -i 's#../../#$(TOPDIR)/feeds/luci/#g' package/deng/luci-app-socat/Makefile
git clone --depth 1 https://github.com/coolsnowwolf/packages deng-tmp9 && mv deng-tmp9/net/socat package/deng/socat
sed -i 's#../../#$(TOPDIR)/feeds/packages/#g' package/deng/socat/Makefile


git clone --depth 1 https://github.com/immortalwrt/luci deng-tmp7 && mv deng-tmp7/applications/luci-app-vlmcsd package/deng/luci-app-vlmcsd
sed -i 's#../../#$(TOPDIR)/feeds/luci/#g' package/deng/luci-app-vlmcsd/Makefile
git clone --depth 1 https://github.com/immortalwrt/packages deng-tmp8 && mv deng-tmp8/net/vlmcsd package/deng/vlmcsd
sed -i 's#../../#$(TOPDIR)/feeds/packages/#g' package/deng/vlmcsd/Makefile


# Modify default IP（FROM 192.168.1.1 CHANGE TO 10.10.10.1）
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
sed -i 's/CONFIG_FAT_DEFAULT_IOCHARSET="iso8859-1"/CONFIG_FAT_DEFAULT_IOCHARSET="utf8"/g' target/linux/generic/config-6.6
sed -i '$a\net.netfilter.nf_conntrack_max=965535' package/base-files/files/etc/sysctl.conf
sed -i '1i /etc/init.d/ddns start' package/base-files/files/etc/rc.local
# sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=165535' package/kernel/linux/files/sysctl-nf-conntrack.conf

# Modify default theme（FROM uci-theme-bootstrap CHANGE TO luci-theme-material）
# sed -i 's/luci-theme-openwrt-2020/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile


# 官方版
# mkdir -p feeds/packages/net/zerotier/files/etc/config
# wget -O feeds/packages/net/zerotier/files/etc/config/zerotier https://raw.githubusercontent.com/y12800/Actions-OpenWrt/main/app/zerotier && chmod 644 feeds/packages/net/zerotier/files/etc/config/zerotier

# 第三方
mkdir -p package/deng/zerotier/files/etc/config
wget -O package/deng/zerotier/files/etc/config/zerotier https://raw.githubusercontent.com/y12800/Actions-OpenWrt/main/app/zerotier && chmod 644 package/deng/zerotier/files/etc/config/zerotier




# NAME=$"package/deng/luci-app-unblockneteasemusic/root/usr/share/unblockneteasemusic" && mkdir -p $NAME/core
# curl 'https://api.github.com/repos/UnblockNeteaseMusic/server/commits?sha=enhanced&path=precompiled' -o commits.json
# echo "$(grep sha commits.json | sed -n "1,1p" | cut -c 13-52)">"$NAME/core_local_ver"
# curl -L https://github.com/UnblockNeteaseMusic/server/raw/enhanced/precompiled/app.js -o $NAME/core/app.js
# curl -L https://github.com/UnblockNeteaseMusic/server/raw/enhanced/precompiled/bridge.js -o $NAME/core/bridge.js
# curl -L https://github.com/UnblockNeteaseMusic/server/raw/enhanced/ca.crt -o $NAME/core/ca.crt
# curl -L https://github.com/UnblockNeteaseMusic/server/raw/enhanced/server.crt -o $NAME/core/server.crt
# curl -L https://github.com/UnblockNeteaseMusic/server/raw/enhanced/server.key -o $NAME/core/server.key
