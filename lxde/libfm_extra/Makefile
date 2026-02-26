COMMENT = Library for file management
VERSION = 1.3.2
REVISION = 0
CATEGORIES = libs
PKGNAME = libfm_extra
HOMEPAGE = https://github.com/lxde/libfm
ARCHIVE = libfm-1.3.2.tar.xz
LINK = https://downloads.sourceforge.net/pcmanfm/libfm-1.3.2.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = libfm-1.3.2
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-static \
	--with-gtk=3 \
	--with-extra-only \
	--with-gnu-ld \
	--build=x86_64-pc-linux-musl && \
	sed -i -e 's/ -shared / -Wl,-O1,--as-needed\0/g' libtool)
MAKEOPT =

prepare:

post_build:
	rm -rf package/usr/include/libfm
	mv package/usr/include/libfm-1.0/ package/usr/include/libfm

post-install:

include /usr/share/mk/lfs.port.mk
