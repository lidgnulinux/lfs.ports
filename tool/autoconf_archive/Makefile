COMMENT = Collection of re-usable GNU Autoconf macros
VERSION = 2026.11.11
REVISION = 0
CATEGORIES = tool
PKGNAME = autoconf_archive
HOMEPAGE = https://www.gnu.org/software/autoconf-archive/
ARCHIVE = autoconf-archive-${VERSION}.tar.xz
LINK = https://ftp.gnu.org/gnu/autoconf-archive/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = autoconf-archive-${VERSION}
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--infodir=/usr/share/info/${PKGNAME})
MAKEOPT =
STRIP = no

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
