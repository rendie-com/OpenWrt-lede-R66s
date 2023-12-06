#!/bin/bash
# =================================================================
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# =================================================================

# 添加软件源
# （注1：有的软件源，在编译的时后，会出现“警告”。例如：WARNING: Makefile 'package/feeds/haibo/linkease/Makefile' has a dependency on 'ffmpeg-remux', which does not exist）
# （注2：软件源，填的多，编译出来的文件也会变大）
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
# echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
# echo 'src-git liuran001_packages https://github.com/liuran001/openwrt-packages' >>feeds.conf.default
# echo 'src-git haibo https://github.com/haiibo/openwrt-packages' >>feeds.conf.default

#echo 'src-git helloworld https://github.com/Jason6111/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' >> "feeds.conf.default"
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main' >>feeds.conf.default


# 添加第三方软件包
# git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
