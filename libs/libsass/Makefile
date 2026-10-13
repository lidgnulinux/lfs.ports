COMMENT = C/C++ implementation of a Sass compiler
VERSION = 3.6.6
REVISION = 0
CATEGORIES = libs
PKGNAME = libsass
HOMEPAGE = https://sass-lang.com/libsass
ARCHIVE = 3.6.6.tar.gz
LINK = https://github.com/sass/libsass/archive/3.6.6.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libsass-3.6.6
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/patch/fix-pkgconfig-version.patch
	autoreconf -vif ${BUILDDIR}

post_build:
	rm -f package/usr/lib/*.la

post-install:

include /usr/share/mk/lfs.port.mk
