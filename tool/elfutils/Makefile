COMMENT = Utilities and DSOs to handle ELF files and DWARF data
VERSION = 0.195
REVISION = 0
CATEGORIES = tool
PKGNAME = elfutils
HOMEPAGE = https://sourceware.org/elfutils/
ARCHIVE = elfutils-0.195.tar.bz2
LINK = https://sourceware.org/elfutils/ftp/0.195/elfutils-0.195.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = elfutils-0.195
AUTO_CONF = (cd ${BUILDDIR} && CFLAGS="-D_GNU_SOURCE -Wno-error -Wno-null-dereference" ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--localstatedir=/var \
	--disable-werror \
	--program-prefix=eu- \
	--enable-deterministic-archives \
	--disable-nls \
	--disable-libdebuginfod \
	--disable-debuginfod \
	--with-zstd \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
