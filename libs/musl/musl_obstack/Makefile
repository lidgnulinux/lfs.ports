COMMENT = Standalone library to implement GNU libc's obstack
VERSION = 1.2.3
REVISION = 0
CATEGORIES = libs
PKGNAME = musl_obstack
HOMEPAGE = https://github.com/void-linux/musl-obstack
ARCHIVE = v1.2.3.tar.gz
LINK = https://github.com/void-linux/musl-obstack/archive/v1.2.3.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = musl-obstack-1.2.3
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	cd ${BUILDDIR} && ./bootstrap.sh

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
