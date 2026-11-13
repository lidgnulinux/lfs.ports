COMMENT = Emulated Input library
VERSION = 1.6.0
REVISION = 0
CATEGORIES = libs
PKGNAME = libei
HOMEPAGE = https://gitlab.freedesktop.org/libinput/libei
SRCCD = archive
ARCHIVE = libei-${VERSION}.tar.bz2
LINK = https://gitlab.freedesktop.org/libinput/libei/-/archive/${VERSION}/${ARCHIVE}
BUILD =  meson
BUILDDIR = libei-${VERSION}
BUILD_OPTION = -Dliboeffis=enabled -Dtests=disabled
_SHA = fbbdf1467eb0d04a6ee465def2e529e4c87f2118

prepare:
	wget -c https://github.com/nemequ/munit/archive/${_SHA}.tar.gz
	tar -xf ${_SHA}.tar.gz
	ln -sfv munit-${_SHA} ${BUILDDIR}/subprojects/munit

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
