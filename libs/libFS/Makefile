COMMENT = X font service client library
VERSION = 1.0.10
REVISION = 0
CATEGORIES = libs
PKGNAME = libFS
HOMEPAGE = https://www.x.org
ARCHIVE = libFS-${VERSION}.tar.xz
LINK = https://www.x.org/releases/individual/lib/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libFS-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
