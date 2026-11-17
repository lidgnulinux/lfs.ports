COMMENT = General-purpose scalable concurrent malloc implementation
VERSION = 5.4.0
REVISION = 0
CATEGORIES = libs
PKGNAME = jemalloc
HOMEPAGE = https://jemalloc.net/
ARCHIVE = ${VERSION}.tar.gz
LINK = https://github.com/jemalloc/jemalloc/archive/refs/tags/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = jemalloc-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
  --enable-prof \
  --enable-autogen \
  --disable-static \
	--libdir=/usr/lib)
MAKEOPT =

prepare:
	cd ${BUILDDIR}; autoreconf -fi

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
