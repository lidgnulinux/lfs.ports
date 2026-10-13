COMMENT = Lightweight PDF and XPS viewer
VERSION = 1.26.12
REVISION = 0
CATEGORIES = doc
PKGNAME = mupdf
HOMEPAGE = https://mupdf.com
ARCHIVE = mupdf-1.26.12-source.tar.gz
LINK = https://mupdf.com/downloads/archive/mupdf-1.26.12-source.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = mupdf-1.26.12-source
MAKEOPT = build=release \
	shared=yes \
	USE_SYSTEM_LIBS=yes \
	USE_SYSTEM_MUJS=yes \
	USE_SYSTEM_GLUT=no \
	prefix=/usr \
	libs apps

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done
	for d in ${BUILDDIR}/thirdparty/*; do \
		case "$${d##*/}" in \
		extract|freeglut|lcms2) continue ;; \
		*) rm -rf $$d ;; \
		esac; done
	sed "s/@@VERSION@@/${VERSION}/" $(CURDIR)/mupdf.pc.in > mupdf.pc

post_build:
	install -D -m644 mupdf.pc -t package/usr/lib/pkgconfig/
	install -D -m755 mupdf -t package/usr/bin/
	install -D -m644 ${BUILDDIR}/docs/logo/mupdf-logo.svg \
		package/usr/share/icons/hicolor/scalable/apps/mupdf.svg
	desktop-file-install --dir="package/usr/share/applications" mupdf.desktop

post-install:

include /usr/share/mk/lfs.port.mk
