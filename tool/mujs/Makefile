COMMENT = An embeddable JavaScript interpreter
VERSION = 1.3.9
REVISION = 0
CATEGORIES = tool
PKGNAME = mujs
HOMEPAGE = https://mujs.com/
ARCHIVE = mujs-${VERSION}.tar.gz
LINK = https://mujs.com/downloads/mujs-${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = mujs-${VERSION}
BUILD_OPTION =
MAKEOPT = prefix=/usr release

prepare:

post_build:
	install -v -m755 ${BUILDDIR}/build/release/libmujs.so package/usr/lib

post-install:

include /usr/share/mk/lfs.port.mk
