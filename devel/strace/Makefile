COMMENT = Diagnostic, debugging and instructional userspace tracer
VERSION = 6.18
REVISION = 0
CATEGORIES = devel
PKGNAME = strace
HOMEPAGE = https://strace.io
ARCHIVE = strace-6.18.tar.xz
LINK = https://github.com/strace/strace/releases/download/v6.18/strace-6.18.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = strace-6.18
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-mpers=no \
	--mandir=/usr/share/man \
	--infodir=/usr/share/info \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

custom-build:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
