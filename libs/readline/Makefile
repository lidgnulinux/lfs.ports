COMMENT = GNU readline library
VERSION = 8.3.1
REVISION = 0
CATEGORIES = libs
PKGNAME = readline
HOMEPAGE = https://tiswww.cwru.edu/php/chet/readline/rltop.html
ARCHIVE = readline-8.3.tar.gz
LINK = https://ftp.gnu.org/gnu/readline/readline-8.3.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = readline-8.3
AUTO_CONF = (cd ${BUILDDIR} && ./configure --prefix=/usr \
	--libdir=/usr/lib \
	--enable-static \
	--enable-shared \
	--build=x86_64-pc-linux-musl)

prepare:
	for i in patch/*; do patch -Np0 -d ${BUILDDIR} -i $(CURDIR)/$$i; done
	sed -i '/MV.*old/d' ${BUILDDIR}/Makefile.in
	sed -i '/{OLDSUFF}/c:' ${BUILDDIR}/support/shlib-install

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
