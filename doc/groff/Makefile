COMMENT = GNU troff text-formatting system
VERSION = 1.23.0
REVISION = 0
CATEGORIES = doc
PKGNAME = groff
HOMEPAGE = https://www.gnu.org/software/groff/groff.html
ARCHIVE = groff-1.23.0.tar.gz
LINK = https://ftp.gnu.org/gnu/groff/groff-1.23.0.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = groff-1.23.0
AUTO_CONF = (cd ${BUILDDIR} && PAGE=A4 ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
