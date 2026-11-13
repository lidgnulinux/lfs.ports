COMMENT = Simple audio library for GTK applications
VERSION = 0.30
REVISION = 0
CATEGORIES = libs
PKGNAME = libcanberra
HOMEPAGE = https://0pointer.de/lennart/projects/libcanberra/
SRCCD = archive
ARCHIVE = libcanberra-${VERSION}.tar.xz
LINK = https://dev.alpinelinux.org/archive/libcanberra/${ARCHIVE}
BUILD = make
BUILDDIR = libcanberra-${VERSION} 
AUTO_CONF = (cd ${BUILDDIR}; ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--mandir=/usr/share/man \
	--infodir=/usr/share/info \
	--disable-oss)
MAKEOPT = 

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/libcanberra-multi-backend.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
