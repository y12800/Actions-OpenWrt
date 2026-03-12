#!/bin/bash


rm -rf feeds/luci/applications/luci-app-dockerman
rm -rf feeds/luci/applications/luci-app-filebrowser
rm -rf feeds/luci/applications/luci-app-ddns
rm -rf feeds/packages/net/ddns-scripts
rm -rf feeds/packages/net/zerotier

# 删除官方的 nftables / libnftnl / firewall4
# rm -rf feeds/package/libs/libnftnl
# rm -rf feeds/package/network/utils/nftables
# rm -rf feeds/package/network/config/firewall4


sed -i 's/--set=llvm.download-ci-llvm=true/--set=llvm.download-ci-llvm=false/' feeds/packages/lang/rust/Makefile

# Docker
git clone --depth 1 https://github.com/y12800/luci-app-dockerman package/deng/luci-app-dockerman
sed -i "s/option iptables '1'/option iptables '0'/g" feeds/packages/utils/dockerd/files/etc/config/dockerd
# sed -i "s/option device 'docker0'/# option device 'docker0'/g" feeds/packages/utils/dockerd/files/etc/config/dockerd




#Turbo ACC 网络加速设置
rm -rf package/turboacc || true
curl -sSL https://raw.githubusercontent.com/chenmozhijin/turboacc/luci/add_turboacc.sh -o add_turboacc.sh
chmod +x add_turboacc.sh
bash add_turboacc.sh --no-sfe
# rm -rf package/turboacc || true
# curl -sSL https://raw.githubusercontent.com/tkhot88/turboacc2/main/turboacc2.sh -o turboacc2.sh
# chmod +x turboacc2.sh
# bash turboacc2.sh



#Passwall
git clone --depth 1 https://github.com/Openwrt-Passwall/openwrt-passwall.git package/openwrt-passwall
git clone --depth 1 https://github.com/Openwrt-Passwall/openwrt-passwall-packages.git package/openwrt-passwall-packages

#主题
git clone --depth 1 https://github.com/jerrykuku/luci-theme-argon.git package/deng/luci-theme-argon
git clone --depth 1 https://github.com/jerrykuku/luci-app-argon-config package/deng/luci-app-argon-config
# git clone --depth 1 https://github.com/derisamedia/luci-theme-alpha package/deng/luci-theme-alpha
# git clone --depth 1 https://github.com/derisamedia/luci-app-alpha-config package/deng/luci-app-alpha-config

#软件
git clone --depth 1 https://github.com/lisaac/luci-app-diskman.git package/deng/luci-app-diskman
git clone --depth 1 https://github.com/kenzok78/luci-app-adguardhome package/deng/luci-app-adguardhome
git clone --depth 1 https://github.com/sirpdboy/luci-app-ddns-go package/deng/luci-app-ddns-go
git clone --depth 1 https://github.com/tty228/luci-app-wechatpush.git package/deng/luci-app-wechatpush
git clone --depth 1 https://github.com/vernesong/OpenClash.git package/OpenClash
git clone --depth 1 https://github.com/sirpdboy/luci-app-lucky.git package/deng/luci-app-lucky
git clone --depth 1 https://github.com/tkhot88/luci-app-filebrowser package/luci-app-filebrowser
git clone --depth 1 https://github.com/y12800/luci-app-kodexplorer package/luci-app-kodexplorer && chmod -R 755 package/luci-app-kodexplorer
git clone --depth 1 https://github.com/pymumu/openwrt-smartdns package/smartdns
git clone --depth 1 https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns
git clone --depth 1 https://github.com/y12800/luci-app-cupsd.git package/deng/luci-app-cupsd
git clone --depth 1 https://github.com/sirpdboy/NetSpeedTest.git package/NetSpeedTest

git clone --depth 1 https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
sed -i 's/EXTRA_CFLAGS:=.*/& -Wno-error=misleading-indentation/' package/OpenAppFilter/oaf/Makefile

git clone --depth 1 https://github.com/immortalwrt/luci deng-tmp1 && mv deng-tmp1/applications/luci-app-ddns package/deng/luci-app-ddns
sed -i 's#../../#$(TOPDIR)/feeds/luci/#g' package/deng/luci-app-ddns/Makefile

git clone --depth 1 https://github.com/immortalwrt/packages deng-tmp2 && mv deng-tmp2/net/ddns-scripts package/deng/ddns-scripts
sed -i 's#../../#$(TOPDIR)/feeds/packages/#g' package/deng/ddns-scripts/Makefile

git clone --depth 1 https://github.com/coolsnowwolf/lede deng-tmp3 && mv deng-tmp3/package/lean/ddns-scripts_aliyun package/deng/ddns-scripts_aliyun && mv deng-tmp3/package/lean/ddns-scripts_dnspod package/deng/ddns-scripts_dnspod
sed -i 's#../../#$(TOPDIR)/feeds/packages/#g' package/deng/ddns-scripts_aliyun/Makefile
sed -i 's#../../#$(TOPDIR)/feeds/packages/#g' package/deng/ddns-scripts_dnspod/Makefile

git clone --depth 1 https://github.com/immortalwrt/luci deng-tmp4 && mv deng-tmp4/applications/luci-app-zerotier package/deng/luci-app-zerotier
sed -i 's#../../#$(TOPDIR)/feeds/luci/#g' package/deng/luci-app-zerotier/Makefile

git clone --depth 1 https://github.com/immortalwrt/packages deng-tmp5 && mv deng-tmp5/net/zerotier package/deng/zerotier
sed -i 's#../../#$(TOPDIR)/feeds/packages/#g' package/deng/zerotier/Makefile

git clone --depth 1 https://github.com/coolsnowwolf/luci deng-tmp6 && mv deng-tmp6/applications/luci-app-socat package/deng/luci-app-socat
sed -i 's#../../#$(TOPDIR)/feeds/luci/#g' package/deng/luci-app-socat/Makefile

git clone --depth 1 https://github.com/coolsnowwolf/packages deng-tmp7 && mv deng-tmp7/net/socat package/deng/socat
sed -i 's#../../#$(TOPDIR)/feeds/packages/#g' package/deng/socat/Makefile

git clone --depth 1 https://github.com/immortalwrt/luci deng-tmp8 && mv deng-tmp8/applications/luci-app-vlmcsd package/deng/luci-app-vlmcsd
sed -i 's#../../#$(TOPDIR)/feeds/luci/#g' package/deng/luci-app-vlmcsd/Makefile

git clone --depth 1 https://github.com/immortalwrt/packages deng-tmp9 && mv deng-tmp9/net/vlmcsd package/deng/vlmcsd
sed -i 's#../../#$(TOPDIR)/feeds/packages/#g' package/deng/vlmcsd/Makefile


# Modify default IP（FROM 192.168.1.1 CHANGE TO 10.10.10.1）
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
# sed -i "s#GMT0#CST-8#g" package/base-files/files/bin/config_generate
# sed -i "s#UTC#Asia/Shanghai#g" package/base-files/files/bin/config_generate
sed -i 's/CONFIG_FAT_DEFAULT_IOCHARSET="iso8859-1"/CONFIG_FAT_DEFAULT_IOCHARSET="utf8"/g' target/linux/generic/config-6.6
sed -i '$a\net.netfilter.nf_conntrack_max=965535' package/base-files/files/etc/sysctl.conf
sed -i '1i /etc/init.d/ddns start' package/base-files/files/etc/rc.local
# sed -i '/customized in this file/a net.netfilter.nf_conntrack_max=165535' package/kernel/linux/files/sysctl-nf-conntrack.conf

# 第三方
mkdir -p package/deng/zerotier/files/etc/config
wget -O package/deng/zerotier/files/etc/config/zerotier https://raw.githubusercontent.com/y12800/Actions-OpenWrt/main/app/zerotier && chmod 644 package/deng/zerotier/files/etc/config/zerotier





