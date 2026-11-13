COMMENT = Netscape portable runtime functions.
VERSION = 4.40
REVISION = 0
CATEGORIES = net
PKGNAME = nspr
HOMEPAGE = https://www.mozilla.org/projects/nspr/about-nspr.html
ARCHIVE = nspr-${VERSION}.tar.gz
LINK = https://archive.mozilla.org/pub/nspr/releases/v${VERSION}/src/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = nspr-${VERSION}
BUILD_OPTION = 
AUTO_CONF = (cd ${BUILDDIR} && ./nspr/configure \
	--prefix=/usr \
	--libdir=/usr/lib \
	--disable-debug \
	--with-mozilla \
	--with-pthreads \
	--enable-64bit)

prepare:
	sed -i '/^RELEASE/s|^|#|' ${BUILDDIR}/nspr/pr/src/misc/Makefile.in
	sed -i 's|$$(LIBRARY) ||' ${BUILDDIR}/nspr/config/rules.mk

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
