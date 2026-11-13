COMMENT = GNU make utility to maintain groups of programs (static version)
VERSION = 4.4.1
REVISION = 0
CATEGORIES = devel
PKGNAME = make.static
HOMEPAGE = https://www.gnu.org/software/make
ARCHIVE = make-4.4.1.tar.gz
LINK = https://ftp.gnu.org/gnu/make/make-4.4.1.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = make-4.4.1
AUTO_CONF = (cd ${BUILDDIR} && ./configure LDFLAGS="-static" \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:
	mv package/usr/bin/make package/usr/bin/make.static
	mkdir -p package/usr/include/make.static
	mv package/usr/include/gnumake.h package/usr/include/make.static
	mv package/usr/share/man/man1/make.1 package/usr/share/man/man1/make.static.1
	rm -rf package/usr/share/info*

post-install:

include /usr/share/mk/lfs.port.mk
