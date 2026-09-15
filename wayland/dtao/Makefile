COMMENT = dzen for wayland
VERSION = 0.1.c57fe859b
_SHA = 57fe859b1f24f17a85ee38825159de9eefdfbb10
REVISION = 1
CATEGORIES = wayland
PKGNAME = dtao
HOMEPAGE = https://github.com/djpohly/dtao
ARCHIVE = ${_SHA}.tar.gz
LINK = https://github.com/djpohly/dtao/archive/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = dtao-${_SHA}
MAKEOPT =
DOC = 1

prepare:
	patch -p1 -d ${BUILDDIR} -i $(PWD)/00_add_position.patch 

post_build:
ifeq ($(DOC),1)
	lowdown -s -tman ${BUILDDIR}/doc/dtao.1.ronn -o dtao.1
else
	echo "no need to generate manual page."
endif

	install -Dm644 -t package/usr/share/man/man1 dtao.1

post-install:

include /usr/share/mk/lfs.port.mk
