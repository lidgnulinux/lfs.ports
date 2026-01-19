COMMENT = Small audio and MIDI framework from the OpenBSD project
VERSION = 1.10.0
REVISION = 0
CATEGORIES = audio
PKGNAME = sndio
HOMEPAGE = https://sndio.org/
ARCHIVE = sndio-1.10.0.tar.gz
LINK = https://sndio.org/sndio-1.10.0.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = sndio-1.10.0
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
