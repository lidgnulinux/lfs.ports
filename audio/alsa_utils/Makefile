COMMENT = Advanced Linux Sound Architecture (ALSA) utilities
VERSION = 1.2.16
REVISION = 0
CATEGORIES = audio
PKGNAME = alsa_utils
HOMEPAGE = https://alsa-project.org/
ARCHIVE = alsa-utils-1.2.16.tar.bz2
LINK = https://alsa-project.org/files/pub/utils/alsa-utils-1.2.16.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = alsa-utils-1.2.16
AUTO_CONF = (cd ${BUILDDIR} && ./configure --prefix=/usr \
	--libdir=/usr/lib \
	--disable-nls \
	--disable-xmlto \
	--with-alsactl-lock-dir=/run/lock \
	--build=x86_64-pc-linux-musl)

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
