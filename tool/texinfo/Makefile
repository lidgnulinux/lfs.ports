COMMENT = Utilities to work with and produce manuals, ASCII text, and on-line documentation from a single source file
VERSION = 7.2
REVISION = 0
CATEGORIES = tool
PKGNAME = texinfo
HOMEPAGE = https://www.gnu.org/software/texinfo/
ARCHIVE = texinfo-7.2.tar.xz
LINK = https://ftp.gnu.org/gnu/texinfo/texinfo-7.2.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = texinfo-7.2
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-nls \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
