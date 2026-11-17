COMMENT = Unix Open DataBase Connectivity sub-system and SDK
VERSION = 2.3.14
REVISION = 0
CATEGORIES = db
PKGNAME = unixodbc
HOMEPAGE = https://www.unixodbc.org/
ARCHIVE = unixODBC-${VERSION}.tar.gz
LINK = https://www.unixodbc.org/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = unixODBC-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--mandir=/usr/share/man \
	--infodir=/usr/share/info \
	--localstatedir=/var \
	--disable-nls \
	--enable-gui=no \
	--enable-static)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
