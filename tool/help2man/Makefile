COMMENT = Create simple man pages from --help output
VERSION = 1.49.3
REVISION = 0
CATEGORIES = tool
PKGNAME = help2man
HOMEPAGE = https://www.gnu.org/software/help2man
ARCHIVE = help2man-1.49.3.tar.xz
LINK = https://ftp.gnu.org/gnu/help2man/help2man-1.49.3.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = help2man-1.49.3
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--localstatedir=/var \
	--build=x86_64-pc-linux-musl)

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
