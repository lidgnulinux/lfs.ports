COMMENT = An event driven initramfs infrastructure
VERSION = 110
REVISION = 0
CATEGORIES = sys
PKGNAME = dracut
HOMEPAGE = https://dracut-ng.github.io/dracut-ng/
ARCHIVE = 110.tar.gz
LINK = https://github.com/dracut-ng/dracut/archive/refs/tags/110.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = dracut-ng-110
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir="/etc" \
	--disable-asciidoctor)
MAKEOPT =
CFLAGS=-D__GLIBC_PREREQ=
export CFLAGS

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
