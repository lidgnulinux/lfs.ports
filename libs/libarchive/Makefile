COMMENT = Multi-format archive and compression library.
VERSION = 3.8.6
REVISION = 0
CATEGORIES = libs
PKGNAME = libarchive
HOMEPAGE = http:/libarchive.org
ARCHIVE = libarchive-${VERSION}.tar.xz
LINK = https://libarchive.org/downloads/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libarchive-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--libdir=/usr/lib \
	--enable-static=yes \
	--enable-shared=yes \
	--without-xml2 \
	--without-openssl \
	--without-iconv \
	--without-libiconv-prefix \
	--with-nettle \
	--build=x86_64-pc-linux-musl)

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
