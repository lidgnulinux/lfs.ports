COMMENT = Linux Key Management Utilities
VERSION = 1.6.3
REVISION = 0
CATEGORIES = tool
PKGNAME = keyutils
HOMEPAGE = https://www.kernel.org/
ARCHIVE = keyutils-${VERSION}.tar.gz
LINK = https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/keyutils.git/snapshot/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = keyutils-${VERSION}
MAKEOPT = SBINDIR='/usr/bin' BINDIR='/usr/bin' LIBDIR='/usr/lib' USRLIBDIR='/usr/lib'

prepare:
	patch -Np0 -d ${BUILDDIR} -i $(CURDIR)/request-key.conf.patch 
	patch -Np1 -d ${BUILDDIR} -i $(CURDIR)/reproducible.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
