COMMENT = X authority file utility.
VERSION = 1.1.3
REVISION = 0
CATEGORIES = tool
PKGNAME = xauth
HOMEPAGE = https://www.x.org
ARCHIVE = xauth-1.1.3.tar.gz
LINK = https://www.x.org/releases/individual/app/xauth-1.1.3.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = xauth-1.1.3
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-ipv6)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
