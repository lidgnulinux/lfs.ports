COMMENT = Linux kernel trace event library
VERSION = 1.9.1
REVISION = 0
CATEGORIES = libs
PKGNAME = libtraceevent
HOMEPAGE = https://git.kernel.org/pub/scm/libs/libtrace/libtraceevent.git/about/
ARCHIVE = libtraceevent-${VERSION}.tar.gz
LINK = https://git.kernel.org/pub/scm/libs/libtrace/libtraceevent.git/snapshot/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libtraceevent-${VERSION}
MAKEOPT = prefix=/usr libdir_relative=lib
export DESTDIR = $(CURDIR)/package

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
