# OpenWrt-lede-R66s
编译lede的项目，选择R66s型号

注：不能指定，内核版本，指定了也没用。

插件对应参考列表：https://www.right.com.cn/forum/thread-344825-1-1.html

R66s参考：https://github.com/haiibo/OpenWrt

portainer 容器：docker run -d --restart=always --name="portainer" -p 9999:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce

问：为什么是lede的项目，而不是openwrt官方源码？
答：因为这个型号的驱动没被官方收入，而lede有这个驱动。
