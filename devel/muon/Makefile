COMMENT = An implementation of the meson build system in c99
VERSION = 0.6.0.cdea94cf9
_REV = dea94cf9546627b7e78617cf53b95a65a579f528
REVISION = 0
CATEGORIES = devel
PKGNAME = muon
HOMEPAGE = https://muon.build
ARCHIVE = ${_REV}.tar.gz
LINK = https://github.com/muon-build/muon/archive/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = muon-${_REV}

prepare:

custom-build:
	cd ${BUILDDIR} && CFLAGS=-DBOOTSTRAP_NO_SAMU ./bootstrap.sh build
	cd ${BUILDDIR} && build/muon-bootstrap setup \
		-Dprefix=/usr \
		-Dauto_features=enabled \
		-Dsamurai=disabled \
		-Dtracy=disabled \
		-Dui=disabled \
		-Dwebsite=disabled \
		-Dnative_backtrace=disabled \
		build
	cd ${BUILDDIR} && ninja -C build
	cd ${BUILDDIR} && DESTDIR=$(PWD)/pkg build/muon -C build install

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
