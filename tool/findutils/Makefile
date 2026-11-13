COMMENT = GNU utilities for finding files
VERSION = 4.10.0
REVISION = 0
CATEGORIES = tool
PKGNAME = findutils
HOMEPAGE = https://www.gnu.org/software/findutils/
ARCHIVE = findutils-4.10.0.tar.xz
LINK = https://ftp.gnu.org/pub/gnu/findutils/findutils-4.10.0.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = findutils-4.10.0
AUTO_CONF = (cd ${BUILDDIR} && ./configure LDFLAGS="-static"\
	--prefix=/usr \
	--localstatedir=/var/lib/locate)

prepare:

custom-build:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
