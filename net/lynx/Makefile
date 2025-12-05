COMMENT = A text browser for the World Wide Web
VERSION = 2.9.2
REVISION = 0
CATEGORIES = net
PKGNAME = lynx
HOMEPAGE = https://lynx.browser.org
ARCHIVE = lynx${VERSION}.tar.bz2
LINK = https://invisible-mirror.net/archives/lynx/tarballs/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = lynx${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--libdir=/usr/lib \
	--sysconfdir=/etc \
	--with-zlib \
	--with-bzlib \
	--with-ssl \
	--with-screen=ncursesw \
	--enable-locale-charset \
	--enable-ipv6 \
	--enable-japanese-utf8 \
	--enable-nested-tables \
	--build=x86_64-pc-linux-musl)

prepare:

post_build:
	sed -e '/#LOCALE/     a LOCALE_CHARSET:TRUE' \
		-e '/#DEFAULT_ED/ a DEFAULT_EDITOR:vi' \
		-e '/#PERSIST/    a PERSISTENT_COOKIES:TRUE' \
		-i "package/etc/lynx.cfg"

post-install:

include /usr/share/mk/lfs.port.mk
