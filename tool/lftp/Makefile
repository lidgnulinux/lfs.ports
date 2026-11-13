COMMENT = Sophisticated ftp/http client
VERSION = 4.9.3
REVISION = 1
CATEGORIES = tool
PKGNAME = lftp
HOMEPAGE = https://lftp.tech
ARCHIVE = lftp-${VERSION}.tar.xz
LINK = https://lftp.yar.ru/ftp/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = lftp-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--without-openssl \
	--with-modules \
	--with-gnutls \
	--disable-nls \
	--disable-static \
	--enable-threads=posix)
GRAFT = no

prepare:
	autoreconf -vif ${BUILDDIR}

post_build:
	rm -f package/usr/lib/charset.alias

post-install:

include /usr/share/mk/lfs.port.mk
