#!/bin/bash



rm -rf feeds/luci/applications/luci-app-dockerman
rm -rf feeds/luci/applications/luci-app-filebrowser
# rm -rf feeds/luci/applications/luci-app-acme
rm -rf packages/net/zerotier
# rm -rf packages/net/socat
# rm -rf packages/net/acme


# rm -rf feeds/luci/applications/luci-i18n-filebrowser-zh-cn


git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon.git package/deng/luci-theme-argon
git clone --depth 1 https://github.com/jerrykuku/luci-app-argon-config package/deng/luci-app-argon-config

git clone --depth 1 https://github.com/derisamedia/luci-theme-alpha package/deng/luci-theme-alpha
git clone --depth 1 https://github.com/derisamedia/luci-app-alpha-config package/deng/luci-app-alpha-config
# git clone --depth 1 https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/deng/luci-app-unblockneteasemusic
# git clone --depth 1 https://github.com/sirpdboy/netspeedtest.git package/deng/netspeedtest
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall package/deng/luci-app-passwall
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall2 package/deng/luci-app-passwall2
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall-packages.git package/deng/passwall-packages
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
git clone --depth 1 https://github.com/danchexiaoyang/luci-app-kodexplorer package/luci-app-kodexplorer
# git clone --depth 1 https://github.com/sbwml/openwrt-filebrowser package/luci-app-filebrowser
# git clone --depth 1 https://github.com/sbwml/openwrt-filebrowser package/filebrowser

git clone --depth 1 https://github.com/vernesong/OpenClash.git package/OpenClash
git clone --depth 1 https://github.com/pymumu/openwrt-smartdns package/smartdns
git clone --depth 1 https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
git clone --depth 1 https://github.com/sirpdboy/luci-app-parentcontrol package/deng/luci-app-parentcontrol
git clone --depth 1 https://github.com/sirpdboy/luci-app-cupsd.git package/deng/luci-app-cupsd

# git clone --depth 1 https://github.com/immortalwrt-collections/luci-app-diskman.git package/deng/luci-app-diskman
# git clone --depth 1 https://github.com/zhengmz/luci-app-zerotier.git package/luci-app-zerotier
# git clone --depth 1 https://github.com/0x676e67/luci-app-watchcat-plus package/luci-app-watchcat-plus
# git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld
# git clone --depth 1 https://github.com/ZeaKyX/luci-app-speedtest-web package/deng/luci-app-speedtest-web
# git clone --depth 1 https://github.com/ZeaKyX/speedtest-web.git package/deng/speedtest-web
# git clone --depth 1 https://github.com/librespeed/speedtest-go.git package/deng/speedtest-go
# git clone --depth 1 https://github.com/ZeaKyX/speedtest-go.git package/deng/speedtest-go




# git clone --depth 1 https://github.com/kenzok8/small-package deng-tmp1 && mv deng-tmp1/wrtbwmon package/deng/wrtbwmon && mv deng-tmp1/dnsforwarder package/deng/dnsforwarder

# git clone --depth 1 https://github.com/messense/aliyundrive-webdav deng-tmp2 && mv deng-tmp2/openwrt package/deng/aliyundrive-webdav

# git clone --depth 1 https://github.com/sundaqiang/openwrt-packages deng-tmp3 && mv deng-tmp3/luci-app-wolplus package/deng/luci-app-wolplus

# git clone --depth 1 https://github.com/coolsnowwolf/lede deng-tmp4 && mv deng-tmp4/package/lean/autocore package/deng/autocore && mv deng-tmp4/package/lean/vsftpd-alt package/deng/vsftpd-alt

git clone --depth 1 https://github.com/coolsnowwolf/luci deng-tmp5 && mv deng-tmp5/applications/luci-app-diskman package/deng/luci-app-diskman

# git clone --depth 1 https://github.com/coolsnowwolf/packages deng-tmp6 && mv deng-tmp6/net/zerotier package/deng/zerotier && mv deng-tmp6/net/vlmcsd package/deng/vlmcsd && mv deng-tmp6/net/socat package/deng/socat && mv deng-tmp6/net/acme package/deng/acme

git clone --depth 1 https://github.com/immortalwrt/luci deng-tmp7 && mv deng-tmp7/applications/luci-app-vlmcsd package/deng/luci-app-vlmcsd && mv deng-tmp7/applications/luci-app-socat package/deng/luci-app-socat && mv deng-tmp7/applications/luci-app-zerotier package/deng/luci-app-zerotier

git clone --depth 1 https://github.com/immortalwrt/packages deng-tmp8 && mv deng-tmp8/net/vlmcsd package/deng/vlmcsd && mv deng-tmp8/net/socat package/deng/socat && mv deng-tmp8/net/zerotier package/deng/zerotier

# git clone --depth 1 https://github.com/coolsnowwolf/lede deng-tmp9 && mv deng-tmp9/package/lean/shortcut-fe package/deng/shortcut-fe

# git clone --depth 1 https://github.com/coolsnowwolf/luci deng-tmp10 && mv deng-tmp10/applications/luci-app-turboacc package/deng/luci-app-turboacc

# svn export https://github.com/coolsnowwolf/lede/tree/master/package/lean/ddns-scripts_aliyun package/deng/ddns-scripts_aliyun
git clone --depth 1  https://github.com/coolsnowwolf/lede/tree/master/package/lean/ddns-scripts_aliyun package/deng/ddns-scripts_aliyun

# Modify default IP（FROM 192.168.1.1 CHANGE TO 10.10.10.1）
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
sed -i 's/CONFIG_FAT_DEFAULT_IOCHARSET="iso8859-1"/CONFIG_FAT_DEFAULT_IOCHARSET="utf8"/g' target/linux/generic/config-6.6
# sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=165535' package/base-files/files/etc/sysctl.conf
sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=265535' package/kernel/linux/files/sysctl-nf-conntrack.conf

# Modify default theme（FROM uci-theme-bootstrap CHANGE TO luci-theme-material）
# sed -i 's/luci-theme-openwrt-2020/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile

sed -i 's#../../#$(TOPDIR)/feeds/luci/#g' package/deng/luci-app-diskman/Makefile
# sed -i 's#../../#$(TOPDIR)/feeds/luci/#g' package/deng/parted/Makefile
sed -i 's#../../#$(TOPDIR)/feeds/luci/#g' package/deng/luci-app-zerotier/Makefile
sed -i 's#../../#$(TOPDIR)/feeds/luci/#g' package/deng/luci-app-vlmcsd/Makefile
sed -i 's#../../#$(TOPDIR)/feeds/luci/#g' package/deng/luci-app-socat/Makefile

sed -i 's#../../#$(TOPDIR)/feeds/packages/#g' package/deng/vlmcsd/Makefile
sed -i 's#../../#$(TOPDIR)/feeds/packages/#g' package/deng/socat/Makefile
sed -i 's#../../#$(TOPDIR)/feeds/packages/#g' package/deng/zerotier/Makefile

# NAME=$"package/deng/luci-app-unblockneteasemusic/root/usr/share/unblockneteasemusic" && mkdir -p $NAME/core
# curl 'https://api.github.com/repos/UnblockNeteaseMusic/server/commits?sha=enhanced&path=precompiled' -o commits.json
# echo "$(grep sha commits.json | sed -n "1,1p" | cut -c 13-52)">"$NAME/core_local_ver"
# curl -L https://github.com/UnblockNeteaseMusic/server/raw/enhanced/precompiled/app.js -o $NAME/core/app.js
# curl -L https://github.com/UnblockNeteaseMusic/server/raw/enhanced/precompiled/bridge.js -o $NAME/core/bridge.js
# curl -L https://github.com/UnblockNeteaseMusic/server/raw/enhanced/ca.crt -o $NAME/core/ca.crt
# curl -L https://github.com/UnblockNeteaseMusic/server/raw/enhanced/server.crt -o $NAME/core/server.crt
# curl -L https://github.com/UnblockNeteaseMusic/server/raw/enhanced/server.key -o $NAME/core/server.key
