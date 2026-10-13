COMMENT = Hierarchial argument parsing library broken out from glibc
VERSION = 1.5.0
REVISION = 0
CATEGORIES = libs
PKGNAME = argp_standalone
HOMEPAGE = http://www.lysator.liu.se/~nisse/misc/
ARCHIVE = 1.5.0.tar.gz
LINK = https://github.com/argp-standalone/argp-standalone/archive/refs/tags/1.5.0.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = argp-standalone-1.5.0
AUTO_CONF = (cd ${BUILDDIR} && CFLAGS="-fPIC" ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/gnu89-inline.patch
	autoreconf -vif ${BUILDDIR}

post_build:
	install -D -m644 ${BUILDDIR}/argp.h package/usr/include/argp.h
	install -D -m755 ${BUILDDIR}/libargp.a package/usr/lib/libargp.a

post-install:

include /usr/share/mk/lfs.port.mk
