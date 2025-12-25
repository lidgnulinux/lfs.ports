COMMENT = A low-level cryptographic library.
VERSION = 3.10.2
REVISION = 0
CATEGORIES = libs
PKGNAME = nettle
HOMEPAGE = https://www.lysator.liu.se/~nisse/nettle/
ARCHIVE = nettle-3.10.2.tar.gz
LINK = https://ftp.gnu.org/gnu/nettle/nettle-3.10.2.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = nettle-3.10.2
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
