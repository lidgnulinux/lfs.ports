COMMENT = i3-compatible window manager for Wayland 
VERSION = 1.12
REVISION = 0
CATEGORIES = wayland
PKGNAME = sway
HOMEPAGE = https://github.com/swaywm/sway
ARCHIVE = sway-${VERSION}.tar.gz
LINK = https://github.com/swaywm/sway/archive/${VERSION}/sway-${VERSION}.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = sway-${VERSION}
BUILD_OPTION = -Dgdk-pixbuf=enabled -Dtray=enabled

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/20f70a94b320edde1c292e3a5b763a29570224e5.patch
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/libinput_fix.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
