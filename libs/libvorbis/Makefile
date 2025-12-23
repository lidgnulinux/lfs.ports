COMMENT = The Ogg vorbis library.
VERSION = 1.3.7
REVISION = 0
CATEGORIES = libs
PKGNAME = libvorbis
HOMEPAGE = https://www.xiph.org/ogg/
ARCHIVE = libvorbis-1.3.7.tar.gz
LINK = https://ftp.osuosl.org/pub/xiph/releases/vorbis/libvorbis-1.3.7.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libvorbis-1.3.7
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-shared=yes \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
