COMMENT = A tool to copy files into or out of a cpio or tar archive
VERSION = 2.15
REVISION = 0
CATEGORIES = sys
PKGNAME = cpio
HOMEPAGE = https://www.gnu.org/software/cpio
ARCHIVE = cpio-2.15.tar.bz2
LINK = https://ftp.gnu.org/gnu/cpio/cpio-2.15.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = cpio-2.15
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-largefile \
	--disable-mt \
	--disable-rpath \
	--disable-nls \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:
	rm -f package/usr/lib/charset.alias
	rm -f package/usr/libexec/rmt
	rm package/usr/share/man/*/rmt.*

post-install:

include /usr/share/mk/lfs.port.mk
