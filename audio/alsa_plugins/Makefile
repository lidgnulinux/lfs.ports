COMMENT = Plugins for ALSA.
VERSION = 1.2.12
REVISION = 0
CATEGORIES = audio
PKGNAME = alsa_plugins
HOMEPAGE = https://alsa-project.org
ARCHIVE = alsa-plugins-1.2.12.tar.bz2
LINK = https://www.alsa-project.org/files/pub/plugins/alsa-plugins-1.2.12.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = alsa-plugins-1.2.12
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/ffmpeg9.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
