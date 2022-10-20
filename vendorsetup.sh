#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# 关于橙狐变量详见 OrangeFox_10/fox_10.0/vendor/recovery/orangefox_build_vars.txt

	export LC_ALL="C"
	export ALLOW_MISSING_DEPENDENCIES=true

	echo -e "\x1b[96mbomb: 开始添加OrangeFox Vars...\x1b[m"
	## 构建信息
	# 设置显示在关于页面里的维护人员名称
	export OF_MAINTAINER=youngguo
	# 设置版本号为日期
	export FOX_VERSION=$(date +%y.%m.%d)

	## 添加功能
	# 使用完整版ps命令
	export FOX_REPLACE_BUSYBOX_PS=1
	# 使用完整版getprop命令
	export FOX_REPLACE_TOOLBOX_GETPROP=1
	# 支持tar命令
	export FOX_USE_TAR_BINARY=1
	# 支持sed命令
	export FOX_USE_SED_BINARY=1
	# 使用bash代替sh和ash
	export FOX_USE_BASH_SHELL=1
	export FOX_ASH_IS_BASH=1
	# 使用完整版grep命令
	export FOX_USE_GREP_BINARY=1
	# 支持lzma, xz命令
	export FOX_USE_XZ_UTILS=1
	# 使用橙狐编译的NANO编辑器
	export FOX_USE_NANO_EDITOR=1
	# 添加phhusson's lptools工具
	export OF_ENABLE_LPTOOLS=1

	# 禁止禁用导航栏
	export OF_ALLOW_DISABLE_NAVBAR=0

	# 使橙狐可以刷入具有机型检测限制，与TARGET_OTA_ASSERT_DEVICE冲突
	# export OF_TARGET_DEVICES="OP4EC1,OP4F7FL1"

	# 当安装安装橙狐zip，使用magisk处理所有boot和recovery镜像，防止橙狐被官方recovery替换
	export OF_FORCE_MAGISKBOOT_BOOT_PATCH_MIUI=1
	# 避免在已加密设备上应用强制加密补丁
	export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
	# 跳过FBE解密流程（防止卡在橙狐LOGO或Redmi/Mi LOGO界面）
	export OF_SKIP_FBE_DECRYPTION=1
	# 当ROM大于等于指定安卓SDK等级时，跳过FBE解密流程
	# export OF_SKIP_FBE_DECRYPTION_SDKVERSION=31
	# 在MIUI OTA还原期间尝试解密内部存储（而不是错误退出）
	export OF_OTA_RES_DECRYPT=1
	# 防止橙狐在解密后重新运行自启动进程
	export OF_NO_RELOAD_AFTER_DECRYPTION=1
	# 设置一个很老的build时间，用于解决某些ROM例如MIUI刷机脚本里的防回滚保护检测
	export FOX_BUGGED_AOSP_ARB_WORKAROUND="1546300800"; # Tuesday, January 1, 2019 12:00:00 AM GMT+00:00
	# 防止用户在不使用metadata加密的ROM中重复被metadata装载错误提示刷屏
	export OF_FBE_METADATA_MOUNT_IGNORE=1
	# 手动刷入OTA增量包时尝试进入OpenRecoveryScript模式完成更新
	export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1
	# 尝试处理AVB2.0，防止橙狐被官方recovery替换，实测此机型无效
	export OF_PATCH_AVB20=1
	# 关闭修改橙狐启动画面功能，这个功能可能会导致重启无限卡MI
	export OF_NO_SPLASH_CHANGE=1
	# 禁用橙狐内置的magisk菜单
	export FOX_DELETE_MAGISK_ADDON=1
	# 使用指定的magisk
	export FOX_USE_SPECIFIC_MAGISK_ZIP="$HOME/Magisk.zip"
	# 使用指定的magisk版本号，由于magisk 23+使用了新的包装形式，文件路径改变了，橙狐无法获取正确的版本
	export MAGISK_VER=25.2
	# 当修补recovery/boot镜像时，始终指示magiskboot v24+修补vbmeta标头（自动禁用avb验证？）
	export OF_PATCH_VBMETA_FLAG=1
	# 修复部分设备或者rom的解密问题
	export OF_FIX_DECRYPTION_ON_DATA_MEDIA=1

	echo -e "\x1b[96mbomb: 当你看到这个消息的时候，所有的OrangeFox Var已经添加完毕！\x1b[m"
