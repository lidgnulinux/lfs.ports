COMMENT = Tools necessary to build programs
VERSION = 2.47
REVISION = 0
CATEGORIES = tool
PKGNAME = binutils
HOMEPAGE = https://www.gnu.org/software/binutils/
ARCHIVE = binutils-${VERSION}.tar.xz
LINK = https://sourceware.org/pub/binutils/releases/binutils-${VERSION}.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = binutils-${VERSION}/build
AUTO_CONF = (cd ${BUILDDIR} && ../configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-ld=default \
	--enable-plugins \
	--enable-shared \
	--disable-werror \
	--disable-gprofng \
	--disable-nls \
	--disable-multilib \
	--enable-64-bit-bfd \
	--enable-new-dtags \
	--with-system-zlib \
	--enable-default-hash-style=gnu)
MAKEOPT = tooldir=/usr

prepare:
	mkdir ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
