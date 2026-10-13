COMMENT = An MP3 encoder and graphical frame analyzer
VERSION = 3.100
REVISION = 0
CATEGORIES = audio
PKGNAME = lame
HOMEPAGE = https://lame.sourceforge.net/
ARCHIVE = lame-3.100.tar.gz
LINK = https://downloads.sourceforge.net/project/lame/lame/3.100/lame-3.100.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = lame-3.100
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-nasm \
	--disable-mp3x \
	--enable-shared \
	--with-pic \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	mkdir -p ${BUILDDIR}/libmp3lame/i386/.libs
	sed -i -e '/define sp/s/+/ + /g' ${BUILDDIR}/libmp3lame/i386/nasm.h
	patch -p1 -d ${BUILDDIR} < $(CURDIR)/id3tagfix.patch

	cd ${BUILDDIR} && aclocal && automake --force --add-missing

post_build:
	mkdir -p package/usr/lib/pkgconfig
	cp -r $(CURDIR)/lame.pc package/usr/lib/pkgconfig/lame.pc

post-install:

include /usr/share/mk/lfs.port.mk
