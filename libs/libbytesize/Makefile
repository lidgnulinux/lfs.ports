COMMENT = A tiny library providing a C "class" for working with arbitrary big sizes in bytes
VERSION = 2.12
REVISION = 0
CATEGORIES = libs
PKGNAME = libbytesize
HOMEPAGE = https://github.com/storaged-project/libbytesize
ARCHIVE = 2.12.tar.gz
LINK = https://github.com/rhinstaller/libbytesize/archive/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libbytesize-2.12
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:
	cd ${BUILDDIR}; ./autogen.sh

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
