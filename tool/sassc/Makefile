COMMENT = Libsass command line driver
VERSION = 3.6.2
REVISION = 0
CATEGORIES = tools
PKGNAME = sassc
HOMEPAGE = https://github.com/sass/sassc
ARCHIVE = 3.6.2.tar.gz
LINK = https://github.com/sass/sassc/archive/3.6.2.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = sassc-3.6.2
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-static)
MAKEOPT =

prepare:
	echo "echo ${VERSION}" > ${BUILDDIR}/version.sh

	autoreconf -vif ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
