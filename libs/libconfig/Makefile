COMMENT = A simple library for manipulating structured configuration files
VERSION = 1.8.3
REVISION = 0
CATEGORIES = libs
PKGNAME = libconfig
HOMEPAGE = https://www.hyperrealm.com/libconfig/libconfig.html
ARCHIVE = v${VERSION}.tar.gz
LINK = https://github.com/hyperrealm/libconfig/archive/v${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libconfig-${VERSION}
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:
	autoreconf -fi ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
