COMMENT = Show differences among files
VERSION = 3.12
REVISION = 0
CATEGORIES = tool
PKGNAME = diffutils
HOMEPAGE = https://www.gnu.org/software/diffutils/
ARCHIVE = diffutils-3.12.tar.xz
LINK = https://ftp.gnu.org/pub/gnu/diffutils/diffutils-3.12.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = diffutils-3.12
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-nls)

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
