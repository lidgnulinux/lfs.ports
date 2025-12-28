COMMENT = graphics library that outputs text instead of pixels
VERSION = 0.99_beta20
_V = $(shell echo ${VERSION} | cut -d '_' -f 1)
REVISION = 0
CATEGORIES = libs
PKGNAME = libcaca
HOMEPAGE = http://caca.zoy.org/wiki/libcaca
ARCHIVE = v0.99.beta20.tar.gz
LINK = https://github.com/cacalabs/libcaca/archive/refs/tags/v0.99.beta20.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libcaca-0.99.beta20
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && bash ./configure \
	--prefix=/usr \
	--libdir=/usr/lib)
MAKEOPT =

prepare:
	cd ${BUILDDIR} && sh bootstrap
	sed -e "s|@VERSION@|${_V}|" \
		-i ${BUILDDIR}/cxx/caca++.pc.in \
		-i ${BUILDDIR}/caca/caca.pc.in

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
