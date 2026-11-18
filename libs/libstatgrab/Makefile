COMMENT = A library that provides cross platform access to statistics about the system on which it's run
VERSION = 0.92.1
REVISION = 0
CATEGORIES = libs
PKGNAME = libstatgrab
HOMEPAGE = https://www.i-scream.org/libstatgrab
ARCHIVE = libstatgrab-${VERSION}.tar.gz
LINK = https://www.mirrorservice.org/sites/ftp.i-scream.org/pub/i-scream/libstatgrab/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libstatgrab-${VERSION}
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
