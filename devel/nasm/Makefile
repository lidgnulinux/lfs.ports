COMMENT = 80x86 assembler designed for portability and modularity
VERSION = 3.01
REVISION = 0
CATEGORIES = devel
PKGNAME = nasm
HOMEPAGE = https://www.nasm.us
ARCHIVE = nasm-3.01.tar.xz
LINK = https://www.nasm.us/pub/nasm/releasebuilds/3.01/nasm-3.01.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = nasm-3.01
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:
	patch -Np1 -d ${BUILDDIR} -i $(CURDIR)/nasm-3.01-musl.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
