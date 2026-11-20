COMMENT = Portable foreign function interface library
VERSION = 3.8.1
REVISION = 0
CATEGORIES = libs
PKGNAME = libffi
HOMEPAGE = https://sourceware.org/libffi/
ARCHIVE = v3.8.1.tar.gz
LINK = https://github.com/libffi/libffi/archive/refs/tags/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libffi-3.8.1
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-exec-static-tramp \
	--disable-multi-os-directory \
	--disable-static \
	--enable-pax_emutramp)
MAKEOPT =

prepare:
	autoreconf -fiv ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
