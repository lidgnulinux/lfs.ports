COMMENT = Determine and manipulate the call-chain of a program
VERSION = 1.8.3
REVISION = 0
CATEGORIES = libs
PKGNAME = libunwind
HOMEPAGE = https://www.nongnu.org/libunwind/
ARCHIVE = libunwind-${VERSION}.tar.gz
LINK = https://github.com/libunwind/libunwind/releases/download/v${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libunwind-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--localstatedir=/var \
	--libdir=/usr/lib)
MAKEOPT =

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/b67d508a.patch
	cd ${BUILDDIR}; autoreconf -fvi

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
