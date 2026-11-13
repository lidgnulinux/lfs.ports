COMMENT = Lightweight PDF and XPS viewer
VERSION = 1.28.5
REVISION = 0
CATEGORIES = doc
PKGNAME = mupdf
HOMEPAGE = https://mupdf.com
ARCHIVE = mupdf-${VERSION}-source.tar.gz
LINK = https://mupdf.com/downloads/archive/mupdf-${VERSION}-source.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = mupdf-${VERSION}-source
MAKEOPT = build=release \
	shared=yes \
	tofu=yes \
	tofu_cjk=yes \
	USE_CMARK_GFM=no \
	USE_SYSTEM_LIBS=yes \
	USE_SYSTEM_MUJS=yes \
	USE_SYSTEM_GLUT=no \
	prefix=/usr \
	libs apps
export CFLAGS = -DFZ_ENABLE_MD=0

prepare:
	for d in ${BUILDDIR}/thirdparty/*; do \
		case "$${d##*/}" in \
		extract|freeglut|lcms2) continue ;; \
		*) rm -rf $$d ;; \
		esac; done
	sed "s/@@VERSION@@/${VERSION}/" $(CURDIR)/mupdf.pc.in > mupdf.pc

post_build:
	make -C ${BUILDDIR} PREFIX=/usr ${MAKEFLAGS} ${MAKEOPT} DESTDIR=${DESTDIR} \
		install-shared-c install-extra-apps
	install -D -m644 mupdf.pc -t package/usr/lib/pkgconfig/
	install -D -m755 mupdf -t package/usr/bin/
	install -D -m644 ${BUILDDIR}/docs/logo/mupdf-logo.svg \
		package/usr/share/icons/hicolor/scalable/apps/mupdf.svg
	desktop-file-install --dir="package/usr/share/applications" mupdf.desktop

post-install:

include /usr/share/mk/lfs.port.mk
