COMMENT = GNU awk pattern-matching language
VERSION = 5.3.2
REVISION = 0
CATEGORIES = tool
PKGNAME = gawk
HOMEPAGE = https://www.gnu.org/software/gawk/gawk.html
ARCHIVE = gawk-5.3.2.tar.xz
LINK = https://ftp.gnu.org/gnu/gawk/gawk-5.3.2.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = gawk-5.3.2
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-nls \
	--disable-pma \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/echild-strerror.patch
	sed -i ${BUILDDIR}/test/Makefile.in -e "/clos1way6/d"

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
