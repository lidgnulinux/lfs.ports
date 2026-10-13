COMMENT = X11 PCI access library
VERSION = 0.18.1
REVISION = 0
CATEGORIES = libs
PKGNAME = libpciaccess
HOMEPAGE = https://xorg.freedesktop.org/
ARCHIVE = libpciaccess-0.18.1.tar.xz
LINK = https://www.x.org/releases/individual/lib/libpciaccess-0.18.1.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = libpciaccess-0.18.1
BUILD_OPTION =

prepare:
	patch -p1 -d ${BUILDDIR}  -i $(CURDIR)/vgaarb-Check-snprintf-return-value.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
