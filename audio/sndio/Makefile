COMMENT = Small audio and MIDI framework from the OpenBSD project
VERSION = 1.11.0
REVISION = 0
CATEGORIES = audio
PKGNAME = sndio
HOMEPAGE = https://sndio.org/
ARCHIVE = sndio-${VERSION}.tar.gz
LINK = https://sndio.org/sndio-${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = sndio-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--enable-alsa \
	--privsep-user=sndiod)
MAKEOPT =

prepare:

post_build:
	mkdir -p package/usr/sbin
	mv -v package/usr/bin/sndiod package/usr/sbin/

post-install:

include /usr/share/mk/lfs.port.mk
