COMMENT = Cross-platform audio output library and plugins
VERSION = 1.2.2
REVISION = 0
CATEGORIES = libs
PKGNAME = libao
HOMEPAGE = https://www.xiph.org/ao
ARCHIVE = 1.2.2.tar.gz
LINK = https://github.com/xiph/libao/archive/1.2.2.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libao-1.2.2
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-esd \
	--disable-arts \
	--enable-alsa-mmap \
	--enable-pulse \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done
	autoreconf -fi ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
