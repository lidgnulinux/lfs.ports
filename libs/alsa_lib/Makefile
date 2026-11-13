COMMENT = Advanced Linux Sound Architecture (ALSA) library
VERSION = 1.2.16.1
REVISION = 0
CATEGORIES = libs
PKGNAME = alsa_lib
HOMEPAGE = https://alsa-project.org/
ARCHIVE = alsa-lib-1.2.16.1.tar.bz2
LINK = https://alsa-project.org/files/pub/lib/alsa-lib-1.2.16.1.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = alsa-lib-1.2.16.1
AUTO_CONF = (cd ${BUILDDIR} && ./configure --prefix=/usr \
	--sysconfdir=/etc --without-debug \
	--without-versioned)

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
