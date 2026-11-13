COMMENT = GNU stream editor
VERSION = 4.9
REVISION = 0
CATEGORIES = tool
PKGNAME = sed
HOMEPAGE = https://www.gnu.org/software/sed
ARCHIVE = sed-4.9.tar.xz
LINK = https://ftp.gnu.org/pub/gnu/sed/sed-4.9.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = sed-4.9
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--prefix=/usr \
	--mandir=/usr/share/man \
	--infodir=/usr/share/info \
	--disable-i18n \
	--disable-nls \
	--sysconfdir=/etc)

prepare:

post_build:
	rm -rf package/usr/lib/charset.alias || true
	rmdir -p package/usr/lib 2>/dev/null || true

post-install:

include /usr/share/mk/lfs.port.mk
