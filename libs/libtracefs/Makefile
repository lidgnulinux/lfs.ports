COMMENT = Linux kernel trace file system library
VERSION = 1.8.4
REVISION = 0
CATEGORIES = libs
PKGNAME = libtracefs
HOMEPAGE = https://git.kernel.org/pub/scm/libs/libtrace/libtracefs.git/about/
ARCHIVE = libtracefs-${VERSION}.tar.gz
LINK = https://git.kernel.org/pub/scm/libs/libtrace/libtracefs.git/snapshot/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libtracefs-${VERSION}
MAKEOPT = prefix=/usr libdir_relative=lib
export DESTDIR = $(CURDIR)/package

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
