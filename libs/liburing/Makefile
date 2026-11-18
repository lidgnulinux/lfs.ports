COMMENT = Linux-native io_uring I/O access library
VERSION = 2.15
REVISION = 1
CATEGORIES = libs
PKGNAME = liburing
HOMEPAGE = https://github.com/axboe/liburing
ARCHIVE = liburing-${VERSION}.tar.gz 
LINK = https://git.kernel.org/pub/scm/linux/kernel/git/axboe/liburing.git/snapshot/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = liburing-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr --mandir=/usr/share/man)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
