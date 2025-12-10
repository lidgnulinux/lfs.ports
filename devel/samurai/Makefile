COMMENT = ninja-compatible build tool written in C
VERSION = 1.2
REVISION = 0
CATEGORIES = devel
PKGNAME = samurai
HOMEPAGE = https://github.com/michaelforney/samurai
ARCHIVE = samurai-${VERSION}.tar.gz
LINK = ${HOMEPAGE}/releases/download/${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = samurai-${VERSION}

prepare:

post_build:
	ln -s samu package/usr/bin/ninja

post-install:

include /usr/share/mk/lfs.port.mk
