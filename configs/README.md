CONFIG_TARGET_rockchip=y # 编译图形界面中的【选项一】

CONFIG_TARGET_rockchip_armv8=y # 编译图形界面中的【选项二】

CONFIG_TARGET_rockchip_armv8_DEVICE_fastrhino_r66s=y # 编译图形界面中的【选项三】

# 注：【PARTSIZE】不能填太大，超过约7G，会提示空间不足，无法编译,而且编译后文件大小也变大，总之，能填小就填小，反正可以扩容。

# 为什么要填小？答：文件太大，镜像写入U盘就慢了，编译也慢，有这个时间，还不如点几下来的快。

CONFIG_TARGET_KERNEL_PARTSIZE=128 # 挂载点 目录【/overlay】(注：不能用运算符，报错为：:warning: symbol value '1024*5' invalid for TARGET_ROOTFS_PARTSIZE)

CONFIG_TARGET_ROOTFS_PARTSIZE=384 # 挂载点 目录【/mnt/mmcblk0p1】

CONFIG_LIBMBEDTLS_HAVE_ARMV8CE_AES=y # 未知 必选

CONFIG_HAS_TESTING_KERNEL=y # 未知（具有测试内核） 必选

CONFIG_TESTING_KERNEL=y # 未知（测试内核） 必选

CONFIG_PACKAGE_luci-theme-argon=y # 主题【luci-theme-argon】

CONFIG_PACKAGE_luci-app-diskman=y # 磁盘管理，扩容用的

CONFIG_PACKAGE_luci-app-passwall=y # 插件【passwall】      

CONFIG_PACKAGE_luci-app-smartdns=y

CONFIG_PACKAGE_luci-app-adguardhome=y

CONFIG_PACKAGE_luci-app-usb-printer=y # USB 打印服务器

CONFIG_PACKAGE_luci-app-ttyd=y #TTYD 终端

CONFIG_PACKAGE_luci-app-dockerman=y # docker 


# 下面的docker有问题，拉取镜像报错：code:200 open /opt/tmp/GetImageBlob2552820923: no such file or directory

# CONFIG_PACKAGE_luci-app-docker=y 

# CONFIG_PACKAGE_fdisk=y # 不加在拉取镜像报错：code:200 open /opt/tmp/GetImageBlob2552820923: no such file or directory (待验证)

# CONFIG_PACKAGE_cfdisk=y # 不加在拉取镜像报错：code:200 open /opt/tmp/GetImageBlob2552820923: no such file or directory (待验证)

# 官方文档，看不懂 https://openwrt.org/zh/start     

# 注：在做注释的时候，会报错，不知道原因，所以单独创建这个文件来做注释。

# OpenWrt利用剩余空间扩容根目录或者扩容给Docker用：http://feisuxun.com/jishu/71-cn.html
