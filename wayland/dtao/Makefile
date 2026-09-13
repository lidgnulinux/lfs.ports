COMMENT = dzen for wayland
VERSION = 0.1.c57fe859b
_SHA = 57fe859b1f24f17a85ee38825159de9eefdfbb10
REVISION = 0
CATEGORIES = wayland
PKGNAME = dtao
HOMEPAGE = https://github.com/djpohly/dtao
ARCHIVE = ${_SHA}.tar.gz
LINK = https://github.com/djpohly/dtao/archive/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = dtao-${_SHA}
MAKEOPT =

prepare:
	patch -p1 -d ${BUILDDIR} -i $(PWD)/00_add_position.patch 

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
