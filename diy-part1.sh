#!/bin/bash
# 添加软件源
# （注1：有的软件源，在编译的时后，会出现“警告”。例如：WARNING: Makefile 'package/feeds/haibo/linkease/Makefile' has a dependency on 'ffmpeg-remux', which does not exist）
# （注2：软件源，填的多，编译出来的文件也会变大）
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' >> "feeds.conf.default"
