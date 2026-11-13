COMMENT = A high-quality data compression program
VERSION = 1.0.8
REVISION = 0
CATEGORIES = tool
PKGNAME = bzip2
HOMEPAGE = https://sourceware.org/bzip2/
ARCHIVE = bzip2-1.0.8.tar.gz
LINK = https://sourceware.org/pub/bzip2/bzip2-1.0.8.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = bzip2-1.0.8
override PREFIX="${DESTDIR}/usr"

MAKEOPT =

prepare:
	patch -Np1 -d ${BUILDDIR} -i $(CURDIR)/bzip2-1.0.8-install_docs-1.patch
	sed -i 's@\(ln -s -f \)$(PREFIX)/bin/@\1@' ${BUILDDIR}/Makefile
	sed -i "s@(PREFIX)/man@(PREFIX)/share/man@g" ${BUILDDIR}/Makefile

prebuild: prepare
	make -C ${BUILDDIR} PREFIX=${PREFIX} DESTDIR=${DESTDIR} -f Makefile-libbz2_so
	make -C ${BUILDDIR} PREFIX=${PREFIX} DESTDIR=${DESTDIR} clean

post_build:
	cp -av ${BUILDDIR}/libbz2.so.* package/usr/lib
	ln -sv libbz2.so.1.0.8 package/usr/lib/libbz2.so
	cp -v ${BUILDDIR}/bzip2-shared package/usr/bin/bzip2
	for i in package/usr/bin/{bzcat,bunzip2}; do ln -sfv bzip2 $$i; done

post-install:

include /usr/share/mk/lfs.port.mk
