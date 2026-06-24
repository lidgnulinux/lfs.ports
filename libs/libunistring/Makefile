COMMENT = A library that provides functions for manipulating Unicode strings.
VERSION = 1.4.2
REVISION = 0
CATEGORIES = libs
PKGNAME = libunistring
HOMEPAGE = https://www.gnu.org/software/libunistring/
ARCHIVE = libunistring-1.4.2.tar.gz
LINK = https://ftp.gnu.org/gnu/libunistring/libunistring-1.4.2.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libunistring-1.4.2
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
