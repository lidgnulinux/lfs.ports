COMMENT = The non-interactive network downloader.
VERSION = 1.25.0
REVISION = 0
CATEGORIES = tool
PKGNAME = wget
HOMEPAGE = https://www.gnu.org/software/wget
ARCHIVE = wget-1.25.0.tar.lz
LINK = https://ftp.gnu.org/gnu/wget/wget-1.25.0.tar.lz
SRCCD = archive
BUILD = make
BUILDDIR = wget-1.25.0
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--with-ssl=gnutls \
	--with-metalink)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
