COMMENT = A C library to handle the Public Suffix List.
VERSION = 0.23.3
REVISION = 0
CATEGORIES = libs
PKGNAME = libpsl
HOMEPAGE = https://github.com/rockdaboot/libpsl
ARCHIVE = libpsl-${VERSION}.tar.gz
LINK = https://github.com/rockdaboot/libpsl/releases/download/${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = meson
BUILDDIR = libpsl-${VERSION}
BUILD_OPTION = -Druntime=libidn2 --default-library=both

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
