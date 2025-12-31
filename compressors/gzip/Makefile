COMMENT = Popular data compression program
VERSION = 1.14
REVISION = 0
CATEGORIES = compressors
PKGNAME = gzip
HOMEPAGE = https://www.gnu.org/software/gzip/
ARCHIVE = gzip-1.14.tar.xz
LINK = https://ftp.gnu.org/gnu/gzip/gzip-1.14.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = gzip-1.14
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:
	rm -rf package/usr/lib/charset.alias
	rmdir -p package/usr/lib 2>/dev/null || true

post-install:

include /usr/share/mk/lfs.port.mk
