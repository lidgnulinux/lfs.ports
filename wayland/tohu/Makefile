COMMENT = floating window manager/reference implemenation for neuswc
VERSION = 0.c7c33428d
_SHA = 7c33428dbce080f8654aac544cfc5e4e628495ba
REVISION = 2
CATEGORIES = wayland
PKGNAME = tohu
HOMEPAGE = https://git.sr.ht/~shrub900/tohu
SRCCD = archive
ARCHIVE = ${_SHA}.tar.gz
LINK = ${HOMEPAGE}/archive/${ARCHIVE}
BUILD = make
BUILDDIR = tohu-${_SHA}
EDITOR = vim
export destdir = $(CURDIR)/package
STRIP = no

prepare:
	${EDITOR} ${BUILDDIR}/source/config.h
	sed -i 's/local//' tohu/build.ninja
	cp -r Makefile.build ${BUILDDIR}/Makefile

enable_libinput:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/00_add_libinput_support_v2.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
