COMMENT = 80x86 assembler designed for portability and modularity
VERSION = 3.02
REVISION = 0
CATEGORIES = devel
PKGNAME = nasm
HOMEPAGE = https://www.nasm.us
ARCHIVE = nasm-${VERSION}.tar.xz
LINK = https://www.nasm.us/pub/nasm/releasebuilds/${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = nasm-${VERSION}
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
