COMMENT = multiple-precision floating-point library
VERSION = 4.2.2
REVISION = 0
CATEGORIES = libs
PKGNAME = mpfr
HOMEPAGE = https://www.mpfr.org/
ARCHIVE = mpfr-4.2.2.tar.xz
LINK = https://ftp.gnu.org/gnu/mpfr/mpfr-4.2.2.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = mpfr-4.2.2
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-maintainer-mode \
	--enable-shared \
	--enable-thread-safe \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
