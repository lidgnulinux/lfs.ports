COMMENT = SIXEL encoder/decoder implementation
VERSION = 1.8.7
REVISION = 0
CATEGORIES = libs
PKGNAME = libsixel
HOMEPAGE = https://github.com/saitoha/libsixel
SRCCD = archive
ARCHIVE = v${VERSION}-r2.tar.gz
LINK = https://github.com/saitoha/libsixel/archive/${ARCHIVE}
BUILD = make
BUILDDIR = libsixel-${VERSION}-r2
AUTO_CONF = (cd ${BUILDDIR}; ./configure --prefix=/usr) 
MAKEOPT = 

prepare:
	cd ${BUILDDIR}; autoreconf -fi

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
