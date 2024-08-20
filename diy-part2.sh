#!/bin/bash
#修改默认IP
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate   # 定制默认IP
#===============================================================
# Configure pppoe connection
#uci set network.wan.proto=pppoe
#uci set network.wan.username='yougotthisfromyour@isp.su'
#uci set network.wan.password='yourpassword'

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
