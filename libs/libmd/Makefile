COMMENT = Message Digest functions from BSD systems
VERSION = 1.2.0
REVISION = 0
CATEGORIES = libs
PKGNAME = libmd
HOMEPAGE = https://www.hadrons.org/software/libmd/
ARCHIVE = libmd-${VERSION}.tar.xz
LINK = https://archive.hadrons.org/software/libmd/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libmd-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure --prefix=/usr --sysconfdir=/etc \
	--mandir=/usr/share/man --infodir=/usr/share/info --localstatedir=/var)

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
