#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# ���ڳȺ�������� OrangeFox_10/fox_10.0/vendor/recovery/orangefox_build_vars.txt

	export LC_ALL="C"
	export ALLOW_MISSING_DEPENDENCIES=true

	echo -e "\x1b[96mbomb: ��ʼ���OrangeFox Vars...\x1b[m"
	## ������Ϣ
	# ������ʾ�ڹ���ҳ�����ά����Ա����
	export OF_MAINTAINER=youngguo
	# ���ð汾��Ϊ����
	export FOX_VERSION=$(date +%y.%m.%d)

	## ��ӹ���
	# ʹ��������ps����
	export FOX_REPLACE_BUSYBOX_PS=1
	# ʹ��������getprop����
	export FOX_REPLACE_TOOLBOX_GETPROP=1
	# ֧��tar����
	export FOX_USE_TAR_BINARY=1
	# ֧��sed����
	export FOX_USE_SED_BINARY=1
	# ʹ��bash����sh��ash
	export FOX_USE_BASH_SHELL=1
	export FOX_ASH_IS_BASH=1
	# ʹ��������grep����
	export FOX_USE_GREP_BINARY=1
	# ֧��lzma, xz����
	export FOX_USE_XZ_UTILS=1
	# ʹ�óȺ������NANO�༭��
	export FOX_USE_NANO_EDITOR=1
	# ���phhusson's lptools����
	export OF_ENABLE_LPTOOLS=1

	# ��ֹ���õ�����
	export OF_ALLOW_DISABLE_NAVBAR=0

	# ʹ�Ⱥ�����ˢ����л��ͼ�����ƣ���TARGET_OTA_ASSERT_DEVICE��ͻ
	# export OF_TARGET_DEVICES="OP4EC1,OP4F7FL1"

	# ����װ��װ�Ⱥ�zip��ʹ��magisk��������boot��recovery���񣬷�ֹ�Ⱥ����ٷ�recovery�滻
	export OF_FORCE_MAGISKBOOT_BOOT_PATCH_MIUI=1
	# �������Ѽ����豸��Ӧ��ǿ�Ƽ��ܲ���
	export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
	# ����FBE�������̣���ֹ���ڳȺ�LOGO��Redmi/Mi LOGO���棩
	export OF_SKIP_FBE_DECRYPTION=1
	# ��ROM���ڵ���ָ����׿SDK�ȼ�ʱ������FBE��������
	# export OF_SKIP_FBE_DECRYPTION_SDKVERSION=31
	# ��MIUI OTA��ԭ�ڼ䳢�Խ����ڲ��洢�������Ǵ����˳���
	export OF_OTA_RES_DECRYPT=1
	# ��ֹ�Ⱥ��ڽ��ܺ�������������������
	export OF_NO_RELOAD_AFTER_DECRYPTION=1
	# ����һ�����ϵ�buildʱ�䣬���ڽ��ĳЩROM����MIUIˢ���ű���ķ��ع��������
	export FOX_BUGGED_AOSP_ARB_WORKAROUND="1546300800"; # Tuesday, January 1, 2019 12:00:00 AM GMT+00:00
	# ��ֹ�û��ڲ�ʹ��metadata���ܵ�ROM���ظ���metadataװ�ش�����ʾˢ��
	export OF_FBE_METADATA_MOUNT_IGNORE=1
	# �ֶ�ˢ��OTA������ʱ���Խ���OpenRecoveryScriptģʽ��ɸ���
	export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1
	# ���Դ���AVB2.0����ֹ�Ⱥ����ٷ�recovery�滻��ʵ��˻�����Ч
	export OF_PATCH_AVB20=1
	# �ر��޸ĳȺ��������湦�ܣ�������ܿ��ܻᵼ���������޿�MI
	export OF_NO_SPLASH_CHANGE=1
	# ���óȺ����õ�magisk�˵�
	export FOX_DELETE_MAGISK_ADDON=1
	# ʹ��ָ����magisk
	export FOX_USE_SPECIFIC_MAGISK_ZIP="$HOME/Magisk.zip"
	# ʹ��ָ����magisk�汾�ţ�����magisk 23+ʹ�����µİ�װ��ʽ���ļ�·���ı��ˣ��Ⱥ��޷���ȡ��ȷ�İ汾
	export MAGISK_VER=25.2
	# ���޲�recovery/boot����ʱ��ʼ��ָʾmagiskboot v24+�޲�vbmeta��ͷ���Զ�����avb��֤����
	export OF_PATCH_VBMETA_FLAG=1
	# �޸������豸����rom�Ľ�������
	export OF_FIX_DECRYPTION_ON_DATA_MEDIA=1

	echo -e "\x1b[96mbomb: ���㿴�������Ϣ��ʱ�����е�OrangeFox Var�Ѿ������ϣ�\x1b[m"
