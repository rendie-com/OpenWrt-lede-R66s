#!/bin/bash
# 添加软件源
# （注1：有的软件源，在编译的时后，会出现“警告”。例如：WARNING: Makefile 'package/feeds/haibo/linkease/Makefile' has a dependency on 'ffmpeg-remux', which does not exist）
# （注2：软件源，填的多，编译出来的文件也会变大）
# echo 'src-git passwall https://github.com/rendie-com/openwrt-passwall' >>feeds.conf.default
# echo 'src-git passwall_packages https://github.com/rendie-com/openwrt-passwall-packages.git;main' >> "feeds.conf.default"

# git clone --depth=1 https://github.com/kongfl888/luci-app-adguardhome package/luci-app-adguardhome


# 修改默认IP
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate   # 定制默认IP
# ===============================================================
# Configure pppoe connection
# uci set network.wan.proto=pppoe
# uci set network.wan.username='yougotthisfromyour@isp.su'
# uci set network.wan.password='yourpassword'

# 移除重复软件包--自带的“luci-theme-argon”不好看
# rm -rf feeds/luci/themes/luci-theme-argon
# 主题
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon

# 调整 Docker 到 服务 菜单
# sed -i 's/"admin"/"admin", "services"/g' feeds/luci/applications/luci-app-dockerman/luasrc/controller/*.lua
# sed -i 's/"admin"/"admin", "services"/g; s/admin\//admin\/services\//g' feeds/luci/applications/luci-app-dockerman/luasrc/model/cbi/dockerman/*.lua
# sed -i 's/admin\//admin\/services\//g' feeds/luci/applications/luci-app-dockerman/luasrc/view/dockerman/*.htm
# sed -i 's|admin\\|admin\\/services\\|g' feeds/luci/applications/luci-app-dockerman/luasrc/view/dockerman/container.htm

# TTYD 自动登录
# sed -i 's|/bin/login|/bin/login -f root|g' feeds/packages/utils/ttyd/files/ttyd.config
