COMMENT = The Jack Audio Connection Kit (version 2).
VERSION = 1.9.22
REVISION = 0
CATEGORIES = audio
PKGNAME = jack2
HOMEPAGE = https://jackaudio.org
ARCHIVE = v${VERSION}.tar.gz
LINK = https://github.com/jackaudio/jack2/archive/refs/tags/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = jack2-${VERSION}

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/importlib.patch

custom-build:
	cd ${BUILDDIR}; ./waf configure \
		--prefix=/usr \
		--mandir=/usr/share/man/man1 \
		--libdir=/usr/lib \
		--dbus \
		--alsa \
		--classic
	cd ${BUILDDIR}; ./waf build -v

post_build:
	cd ${BUILDDIR}; ./waf --destdir=$(CURDIR)/pkg install

post-install:

include /usr/share/mk/lfs.port.mk
