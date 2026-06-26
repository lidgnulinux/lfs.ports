COMMENT = Utilities for internationalization and localization
VERSION = 1.0
REVISION = 0
CATEGORIES = libs
PKGNAME = gettext
HOMEPAGE = https://www.gnu.org/software/gettext
ARCHIVE = gettext-1.0.tar.xz
LINK = https://ftp.gnu.org/gnu/gettext/gettext-1.0.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = gettext-1.0 
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--libdir=/usr/lib \
	--enable-shared=yes \
	--build=x86_64-pc-linux-musl)

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
