COMMENT = The shadow tool suite.
VERSION = 4.20.3
REVISION = 0
CATEGORIES = sys
PKGNAME = shadow
HOMEPAGE = https://pkg-shadow.alioth.debian.org
ARCHIVE = shadow-${VERSION}.tar.xz
LINK = https://github.com/shadow-maint/shadow/releases/download/${VERSION}/shadow-${VERSION}.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = shadow-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-static    \
	--without-libbsd \
	--with-{b,yes}crypt)
MAKEOPT = exec_prefix=/usr pamddir=

prepare:
	find ${BUILDDIR}/man -name Makefile.in -exec sed -i 's/getspnam\.3 / /' {} \;
	find ${BUILDDIR}/man -name Makefile.in -exec sed -i 's/passwd\.5 / /'   {} \;
	sed -e 's@#ENCRYPT_METHOD DES@ENCRYPT_METHOD YESCRYPT@' \
		-e 's@/var/spool/mail@/var/mail@' \
		-e '/PATH=/{s@/sbin:@@;s@/bin:@@}' \
		-i ${BUILDDIR}/etc/login.defs 

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
