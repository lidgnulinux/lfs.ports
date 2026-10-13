COMMENT = Creates PKZIP-compatible .zip files
VERSION = 3.0
REVISION = 0
CATEGORIES = compressors
PKGNAME = zip
HOMEPAGE = http://www.info-zip.org/pub/infozip/Zip.html
ARCHIVE = zip30.tar.gz
LINK = https://downloads.sourceforge.net/infozip/zip30.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = zip30
MAKEOPT = -f unix/Makefile LOCAL_ZIP="${CFLAGS} ${CPPFLAGS}" \
	prefix=/usr generic MANDIR=/usr/share/man/man1

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
