COMMENT = C pipeline manipulation library
VERSION = 1.5.8
REVISION = 0
CATEGORIES = libs
PKGNAME = libpipeline
HOMEPAGE = https://libpipeline.gitlab.io/libpipeline/
ARCHIVE = libpipeline-1.5.8.tar.gz
LINK = https://download.savannah.nongnu.org/releases/libpipeline/libpipeline-1.5.8.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libpipeline-1.5.8
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
