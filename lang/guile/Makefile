COMMENT = The GNU Guile programming language
VERSION = 3.0.11
REVISION = 1
CATEGORIES = lang
PKGNAME = guile
HOMEPAGE = https://www.gnu.org/software/guile/
ARCHIVE = guile-${VERSION}.tar.xz
LINK = https://ftp.gnu.org/gnu/guile/guile-${VERSION}.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = guile-${VERSION}
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-static=no \
	--disable-error-on-warning)
MAKEOPT =
STRIP = no

prepare:

post_build:
	rm package/usr/share/info/dir

post-install:

include /usr/share/mk/lfs.port.mk
