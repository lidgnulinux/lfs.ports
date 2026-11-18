COMMENT = Data files describing media player capabilities, mostly of mass-storage devices
VERSION = 26
REVISION = 0
CATEGORIES = libs
PKGNAME = media_player_info
HOMEPAGE = https://www.freedesktop.org/wiki/Software/media-player-info/
ARCHIVE = media-player-info-${VERSION}.tar.gz 
LINK = https://gitlab.freedesktop.org/media-player-info/media-player-info/-/archive/${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = media-player-info-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--localstatedir=/var)
MAKEOPT =

prepare:
	cd ${BUILDDIR}; autoreconf -fi

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
