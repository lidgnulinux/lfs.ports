COMMENT = Autoconf macros used in X modular configure.ac files
VERSION = 1.20.2
REVISION = 0
CATEGORIES = libs
PKGNAME = util_macros
HOMEPAGE = https://www.x.org
ARCHIVE = util-macros-${VERSION}.tar.gz
LINK = https://www.x.org/releases/individual/util/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = util-macros-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure --prefix=/usr --libdir=/usr/lib) 
STRIP = no

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
