COMMENT = RAR uncompression program
VERSION = 7.1.1
REVISION = 0
CATEGORIES = compressors
PKGNAME = unrar
HOMEPAGE = https://www.rarlab.com/rar_add.htm
ARCHIVE = unrarsrc-7.1.1.tar.gz
LINK = https://www.rarlab.com/rar/unrarsrc-7.1.1.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = unrar
MAKEOPT = -f makefile
override DESTDIR = $(PWD)/package/usr

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
