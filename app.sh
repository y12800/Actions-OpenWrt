#!/bin/bash

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
# {{ Add luci-app-diskman
(mkdir app
cd app && {
    mkdir -p package/luci-app-diskman
    wget https://raw.githubusercontent.com/lisaac/luci-app-diskman/master/applications/luci-app-diskman/Makefile -O package/luci-app-diskman/Makefile
    mkdir -p package/parted
    wget https://raw.githubusercontent.com/lisaac/luci-app-diskman/master/Parted.Makefile -O package/parted/Makefile
})
# cat >> configs/rockchip/01-nanopi <<EOL
# CONFIG_PACKAGE_luci-app-diskman=y
# CONFIG_PACKAGE_luci-app-diskman_INCLUDE_btrfs_progs=y
# CONFIG_PACKAGE_luci-app-diskman_INCLUDE_lsblk=y
# CONFIG_PACKAGE_smartmontools=y
# EOL



#    - name: Apply customizations
#      run: |
#        cd project
#        source ../scripts/add_packages.sh
#        source ../scripts/custome_config.sh