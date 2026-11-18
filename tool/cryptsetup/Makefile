COMMENT = Userspace setup tool for transparent encryption of block devices using dm-crypt
VERSION = 2.8.8
_V = 2.8
REVISION = 0
CATEGORIES = tool
PKGNAME = cryptsetup
HOMEPAGE = https://gitlab.com/cryptsetup/cryptsetup/
ARCHIVE = cryptsetup-${VERSION}.tar.xz
LINK = https://www.kernel.org/pub/linux/utils/cryptsetup/v${_V}/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = cryptsetup-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-ssh-token \
	--disable-asciidoc \
	--disable-static)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
