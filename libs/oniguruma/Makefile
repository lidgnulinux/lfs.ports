COMMENT = a regular expressions library
VERSION = 6.9.10
REVISION = 0
CATEGORIES = libs
PKGNAME = oniguruma
HOMEPAGE = https://github.com/kkos/oniguruma
ARCHIVE = v6.9.10.tar.gz
LINK = https://github.com/kkos/oniguruma/archive/v6.9.10.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = oniguruma-6.9.10
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--mandir=/usr/share/man \
	--infodir=/usr/share/info \
	--localstatedir=/var \
	--enable-posix-api)

prepare:
	autoreconf -vfi ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
