COMMENT = Server access control program for X.
VERSION = 1.0.10
REVISION = 0
CATEGORIES = xapps
PKGNAME = xhost
HOMEPAGE = https://www.x.org
ARCHIVE = xhost-1.0.10.tar.xz
LINK = https://www.x.org/releases/individual/app/xhost-1.0.10.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = xhost-1.0.10
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--with-localedir=no \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
