COMMENT = ath3k bluetooth firmware
VERSION = 1.0
REVISION = 0
CATEGORIES = firmware
PKGNAME = ath3k_bt
HOMEPAGE = https://https://gitlab.com/kernel-firmware/linux-firmware 
BUILD = custom
BUILDDIR =

prepare:
	mkdir -p pkg/lib/firmware

custom-build:
	cp -r $(PWD)/ath3k-1.fw pkg/lib/firmware/

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
