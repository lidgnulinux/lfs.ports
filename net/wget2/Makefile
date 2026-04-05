COMMENT = Network utility to retrieve files from the Web
VERSION = 2.2.1
REVISION = 0
CATEGORIES = net
PKGNAME = wget2
HOMEPAGE = https://www.gnu.org/software/wget/wget.html
ARCHIVE = wget2-2.2.1.tar.gz
LINK = https://ftp.gnu.org/gnu/wget/wget2-2.2.1.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = wget2-2.2.1
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--with-libidn \
	--with-ssl=gnutls \
	--without-libpsl \
	--without-libhsts \
	--without-gpgme \
	--enable-fuzzing \
	--disable-manylibs \
	--disable-nls \
	--disable-rpath \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:
	rm -v package/usr/bin/wget2_noinstall
	install -Dm644 ${BUILDDIR}/docs/man/man1/wget2.1 -t package/usr/share/man/man1/

post-install:

include /usr/share/mk/lfs.port.mk
