COMMENT = ALSA use case manager configuration
VERSION = 1.2.16.1
REVISION = 0
CATEGORIES = audio
PKGNAME = alsa_ucm_conf
HOMEPAGE = https://alsa-project.org
ARCHIVE = alsa-ucm-conf-${VERSION}.tar.bz2
LINK = https://www.alsa-project.org/files/pub/lib/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = alsa-ucm-conf-${VERSION}
STRIP = no

prepare:
	mkdir -p pkg/usr/share/alsa

custom-build:
	cp -RpP ${BUILDDIR}/{ucm,ucm2} pkg/usr/share/alsa

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
