# OpenWrt-lede-R66s
编译lede的项目，选择R66s型号

CONFIG_TARGET_rockchip=y # 编译图形界面中的【选项一】
CONFIG_TARGET_rockchip_armv8=y # 编译图形界面中的【选项二】
CONFIG_TARGET_rockchip_armv8_DEVICE_fastrhino_r66s=y # 编译图形界面中的【选项三】

CONFIG_TARGET_KERNEL_PARTSIZE=64 # 挂载点 目录【/overlay】
CONFIG_TARGET_ROOTFS_PARTSIZE=960 # 挂载点 目录【/mnt/mmcblk0p1】
CONFIG_LIBMBEDTLS_HAVE_ARMV8CE_AES=y # 未知 必选
CONFIG_HAS_TESTING_KERNEL=y # 未知（具有测试内核） 必选
CONFIG_TESTING_KERNEL=y # 未知（测试内核） 必选

CONFIG_PACKAGE_luci-theme-argon=y # 主题【luci-theme-argon】

CONFIG_PACKAGE_luci-app-passwall=y # 插件【passwall】      

# 官方文档，看不懂 https://openwrt.org/zh/start     
# 注：在做注释的时候，会报错，不知道原因。
