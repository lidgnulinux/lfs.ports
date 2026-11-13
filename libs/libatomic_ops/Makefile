COMMENT = Semi-portable access to hardware provided atomic memory operations
VERSION = 7.10.0
REVISION = 0
CATEGORIES = libs
PKGNAME = libatomic_ops
HOMEPAGE = https://github.com/bdwgc/libatomic_ops
ARCHIVE = libatomic_ops-7.10.0.tar.gz
LINK = https://github.com/bdwgc/libatomic_ops/releases/download/v7.10.0/libatomic_ops-7.10.0.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libatomic_ops-7.10.0
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-static=yes \
	--enable-shared=yes)

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
