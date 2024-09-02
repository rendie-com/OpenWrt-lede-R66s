# OpenWrt-lede-R66s
编译lede的项目，选择R66s型号

插件对应参考列表：https://www.right.com.cn/forum/thread-344825-1-1.html

R66s参考：https://github.com/haiibo/OpenWrt

portainer 容器：docker run -d --restart=always --name="portainer" -p 9999:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce

问：为什么是lede的源码，而不是openwrt官方源码？
答：因为这个型号的驱动没被官方收入，而lede有这个驱动。

openwrt官网 https://github.com/openwrt/openwrt

lede源码 : https://github.com/coolsnowwolf/lede

如果编译不成功，说明“lede”改动了配置，就需要进图形界面选择配置了。------(这个问题已解决，已Fork过来，缺点是不会随着“lede”版本的更新而更新。)

什么都没装，免的有的网址打不开而编译失败。

注：我找不到r66s 6.6的版本。-------(找到了，从这里下载： https://github.com/rendie-com/flippy-openwrt-actions/releases/tag/OpenWrt_lede_save_2024.08 缺点是别人提前编译好的，安全性得不到保证。)

2024.09.02  找到一个6.6版的,可以在线编译Lede源码。          https://github.com/oppen321/Lede-OpenWrt  （IP是：192.168.100.1）                     
