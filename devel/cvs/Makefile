COMMENT = Concurrent Versions System
VERSION = 1.12.13
REVISION = 0
CATEGORIES = devel
PKGNAME = cvs
HOMEPAGE = https://www.nongnu.org/cvs/
ARCHIVE = cvs-1.12.13.tar.gz
LINK = https://ftp.gnu.org/non-gnu/cvs/source/feature/1.12.13/cvs-1.12.13.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = cvs-1.12.13
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--mandir=/usr/share/man \
	--infodir=/usr/share/info \
	--with-external-zlib \
	--with-tmpdir=/tmp \
	--build=x86_64-pc-linux-musl)
MAKEOPT =
export CFLAGS=-DUSE_LIBBSD

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done
	autoreconf -fi ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
