COMMENT = An event driven initramfs infrastructure
VERSION = 112
REVISION = 0
CATEGORIES = tool
PKGNAME = dracut
HOMEPAGE = https://dracut-ng.github.io/
ARCHIVE = 112.tar.gz
LINK = https://github.com/dracut-ng/dracut/archive/refs/tags/112.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = dracut-112
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir="/etc" \
	--disable-asciidoctor)
MAKEOPT =
STRIP = no
export CFLAGS = -D__GLIBC_PREREQ

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
