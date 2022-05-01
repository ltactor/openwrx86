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

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/\/opt/\/mnt\/sda3\/docker/g' feeds/luci/applications/luci-app-docker/root/etc/docker/daemon.json
rm -rf feeds/packages/utils/coremark
#sed -i 's/(PKG_HASH|PKG_MD5SUM|PKG_MIRROR_HASH).*/\1:=skip/' feeds/packages/utils/containerd/Makefile
sed -i 's/PKG_HASH.*/PKG_HASH:=skip/' feeds/packages/utils/containerd/Makefile
