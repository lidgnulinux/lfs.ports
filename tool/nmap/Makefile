COMMENT = Utility for network discovery and security auditing
VERSION = 7.993
REVISION = 0
CATEGORIES = tool
PKGNAME = nmap
HOMEPAGE = https://nmap.org/
ARCHIVE = nmap-${VERSION}.tar.bz2
LINK = https://nmap.org/dist/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = nmap-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--without-zenmap \
	--with-libpcap=yes \
	--with-openssl=yes \
	--with-libpcre=yes \
	--with-libz=yes \
	--without-ndiff \
	--without-liblua)
MAKEOPT =

prepare:
	cd ${BUILDDIR}; autoreconf libpcre libdnet-stripped -ivf

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
