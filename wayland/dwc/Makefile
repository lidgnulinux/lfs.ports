COMMENT = DWC (Dynamic Wayland Compositor) is a DWM-like wayland compositor and based on wsxwm
VERSION = 0.c4f07f6dc
_SHA = 4f07f6dcac92aa8c24b29f283b0db387fafa7bdc
REVISION = 1
CATEGORIES = wayland
PKGNAME = dwc
HOMEPAGE = https://git.sr.ht/~corg/DWC
ARCHIVE = ${_SHA}.tar.gz
LINK = ${HOMEPAGE}/archive/${ARCHIVE}
SRCCD = archive
BUILD = bmake
BUILDDIR = DWC-${_SHA}
MAKEOPT =
EDITOR = vim

enable_libinput:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/00_enable_libinput_touchpad.patch

prepare:
	${EDITOR} ${BUILDDIR}/config.def.h

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
