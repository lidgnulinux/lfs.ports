COMMENT = A tool for generating text-scanning programs
VERSION = 2.6.4
REVISION = 0
CATEGORIES = tool
PKGNAME = flex
HOMEPAGE = https://github.com/westes/flex
ARCHIVE = flex-2.6.4.tar.gz
LINK = https://github.com/westes/flex/releases/download/v2.6.4/flex-2.6.4.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = flex-2.6.4
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-static \
	--enable-shared \
	ac_cv_func_malloc_0_nonnull=yes \
	ac_cv_func_realloc_0_nonnull=yes)

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
