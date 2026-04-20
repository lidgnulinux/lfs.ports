COMMENT = Modular Wayland compositor library
VERSION = 0.15.1
REVISION = 0
CATEGORIES = libs
PKGNAME = wlroots0.15
HOMEPAGE = https://gitlab.freedesktop.org/wlroots/wlroots
ARCHIVE = wlroots-0.15.1.tar.gz
LINK = https://gitlab.freedesktop.org/wlroots/wlroots/-/releases/0.15.1/downloads/wlroots-0.15.1.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = wlroots-0.15.1
BUILD_OPTION = --includedir /usr/include/wlroots0.15 \
	-Dlibdir=/usr/lib/wlroots0.15 \
	-Dexamples=false \
	-Dwerror=false \

prepare:
	patch -p2 -d ${BUILDDIR} -i $(PWD)/0001-fix-calloc-transposed-args.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
