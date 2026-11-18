COMMENT = A library with common code used by libraries and tools around the libimobiledevice project
VERSION = 1.3.2
REVISION = 0
CATEGORIES = libs
PKGNAME = libimobiledevice_glue
HOMEPAGE = https://libimobiledevice.org/
ARCHIVE = 1.3.2.tar.gz
LINK = https://github.com/libimobiledevice/libimobiledevice-glue/archive/refs/tags/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = libimobiledevice-glue-1.3.2
AUTO_CONF = (cd ${BUILDDIR} && ./configure PACKAGE_VERSION=1.3.2 \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--localstatedir=/var)
MAKEOPT =

prepare:
	cd ${BUILDDIR}; autoreconf -fi

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
