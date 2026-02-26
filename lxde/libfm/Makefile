COMMENT = Library for file management
VERSION = 1.4.0
REVISION = 0
CATEGORIES = libs
PKGNAME = libfm
HOMEPAGE = https://github.com/lxde/libfm
ARCHIVE = 1.4.0.tar.gz
LINK = https://github.com/lxde/libfm/archive/1.4.0.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libfm-1.4.0
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-static \
	--with-gtk=3 \
	--with-gnu-ld \
	--build=x86_64-pc-linux-musl && \
	sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool)
MAKEOPT =

prepare:
	cd ${BUILDDIR} && ./autogen.sh

post_build:
	rm -rf package/usr/include/libfm
	mv package/usr/include/libfm-1.0/ package/usr/include/libfm
	rm  package/usr/lib/libfm-extra.* \
		package/usr/lib/pkgconfig/libfm-extra.* \
		package/usr/include/libfm/fm-xml-file.h \
		package/usr/include/libfm/fm-extra.h \
		package/usr/include/libfm/fm-version.h

post-install:

include /usr/share/mk/lfs.port.mk
