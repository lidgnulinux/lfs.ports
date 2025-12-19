COMMENT = A generic library support script
VERSION = 2.5.4
REVISION = 0
CATEGORIES = tool
PKGNAME = libtool
HOMEPAGE = https://www.gnu.org/software/libtool
ARCHIVE = libtool-2.5.4.tar.gz
LINK = https://ftp.gnu.org/gnu/libtool/libtool-2.5.4.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libtool-2.5.4
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
