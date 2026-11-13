COMMENT = The Jack Audio Connection Kit (version 1).
VERSION = 0.126.0
REVISION = 0
CATEGORIES = audio
PKGNAME = jack1
HOMEPAGE = https://jackaudio.org
ARCHIVE = jack1-0.126.0.tar.gz
LINK = https://github.com/jackaudio/jack1/releases/download/0.126.0/jack1-0.126.0.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = jack1-0.126.0
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-alsa \
	--disable-portaudio \
	--disable-oss \
	--enable-posix-shm=yes \
	--enable-sse=auto \
	--with-default-tmpdir=/tmp)
MAKEOPT =

prepare:

custom-build:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
