COMMENT = event dispatch library
VERSION = 4.33
REVISION = 0
CATEGORIES = libs
PKGNAME = libev
HOMEPAGE = http://software.schmorp.de/pkg/libev.html
ARCHIVE = libev-4.33.tar.gz
LINK = http://dist.schmorp.de/libev/Attic/libev-4.33.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libev-4.33
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:
	rm package/usr/include/event.h

post-install:

include /usr/share/mk/lfs.port.mk
