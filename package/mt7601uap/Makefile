#
# Copyright (C) 2007-2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
# MTK7601U Wifi AP Model
#

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk

PKG_NAME:=mt7601uap
PKG_VERSION:=3.0.0.1_20130802
PKG_RELEASE:=1
PKG_SOURCE_URL:=https://sourceforge.net/projects/openwrtres/files/mt7610u/
PKG_SOURCE:=mt7601u-ap.tar.gz
PKG_MD5SUM:=0930b2d12f68eb9ddcdd3989dd9026f8
PKG_BUILD_DIR:=$(KERNEL_BUILD_DIR)/mt7601u-ap

PKG_MAINTAINER:=Luca Olivetti <luca@ventoso.org>
PKG_LICENSE:=GPL-2.0+

include $(INCLUDE_DIR)/package.mk

WMENU:=Wireless Drivers

define KernelPackage/mt7601uap
	SUBMENU:=Wireless Drivers
	TITLE:=Driver for MT7601U AP Model wireless adapters 
	FILES:=$(PKG_BUILD_DIR)/os/linux/mt7601Uap.$(LINUX_KMOD_SUFFIX)
	DEPENDS:=+wireless-tools +kmod-mac80211 @USB_SUPPORT
	AUTOLOAD:=$(call AutoProbe,mt7601Uap)
	MENU:=1
endef

define KernelPackage/mt7601uap/config
  if PACKAGE_kmod-mt7601uap
  
	config PACKAGE_MT7601UAP_DEBUG
		bool "Enable debug messages"
		default n
		help
		  With this option the driver will emit A LOT
		  of debugging information. 
		  The driver is quite noisy, so enable it only if
		  absolutely necessary to debug problems with this
		  driver.
		  
  endif
endef

define KernelPackage/mt7601uap/description
  This package contains a driver for usb wireless ap adapters based on the mediatek MT7601U
endef

ifneq ($(CONFIG_BIG_ENDIAN),)
  ENDIANOPTS:=-DRT_BIG_ENDIAN
else
  ENDIANOPTS:=
endif

define Build/Compile
	$(MAKE) -C $(PKG_BUILD_DIR) LINUX_DIR=$(LINUX_DIR) KERNEL_CROSS=$(KERNEL_CROSS) ARCH=$(LINUX_KARCH) ENDIANOPTS=$(ENDIANOPTS) RTDEBUG=$(CONFIG_PACKAGE_MT7601_DEBUG)
endef

define KernelPackage/mt7601uap/install
	$(INSTALL_DIR) $(1)/lib/modules/$(LINUX_VERSION)
endef

$(eval $(call KernelPackage,mt7601uap))