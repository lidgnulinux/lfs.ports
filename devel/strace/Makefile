COMMENT = Diagnostic, debugging and instructional userspace tracer
VERSION = 7.2
REVISION = 0
CATEGORIES = devel
PKGNAME = strace
HOMEPAGE = https://strace.io
ARCHIVE = strace-${VERSION}.tar.xz
LINK = https://github.com/strace/strace/releases/download/v${VERSION}/strace-${VERSION}.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = strace-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-mpers=no \
	--mandir=/usr/share/man)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
