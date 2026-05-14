COMMENT = A fast and consistent wire protocol for IPC
VERSION = 0.3.1
REVISION = 0
CATEGORIES = libs
PKGNAME = hyprwire
HOMEPAGE = https://github.com/hyprwm/hyprwire
ARCHIVE = hyprwire-0.3.1.tar.gz
LINK = https://github.com/hyprwm/hyprwire/archive/v0.3.1/hyprwire-0.3.1.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = hyprwire-0.3.1
BUILD_OPTION = -Wno-dev

prepare:
	for i in patch/*; do patch -p0 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
