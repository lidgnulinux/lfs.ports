COMMENT = Convert between XML and PO using ITS.
VERSION = 2.0.7
REVISION = 0
CATEGORIES = tool
PKGNAME = itstool
HOMEPAGE = https://itstool.org
ARCHIVE = itstool-2.0.7.tar.bz2
LINK = http://files.itstool.org/itstool/itstool-2.0.7.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = itstool-2.0.7
AUTO_CONF = (cd ${BUILDDIR} && ./configure PYTHON="/usr/bin/python3" \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
