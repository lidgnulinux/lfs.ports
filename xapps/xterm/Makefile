COMMENT = X Terminal Emulator
VERSION = 407
REVISION = 0
CATEGORIES = xapps
PKGNAME = xterm
HOMEPAGE = https://invisible-island.net/xterm
ARCHIVE = xterm-${VERSION}.tgz
LINK = https://invisible-island.net/archives/xterm/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = xterm-${VERSION}
AUTO_CONF= (cd ${BUILDDIR} && ./configure CFLAGS="-flto=auto -D_BSD_SOURCE" \
	--prefix=/usr \
	--sysconfdir=/etc \
	--mandir=/usr/share/man \
	--infodir=/usr/share/info \
	--localstatedir=/var \
	--with-x \
	--disable-full-tgetent \
	--disable-imake \
	--enable-ansi-color \
	--enable-88-color \
	--enable-256-color \
	--enable-broken-osc \
	--enable-broken-st \
	--enable-load-vt-fonts \
	--enable-i18n \
	--enable-wide-chars \
	--enable-doublechars \
	--enable-warnings \
	--enable-tcap-query \
	--enable-logging \
	--enable-dabbrev \
	--enable-freetype \
	--enable-luit \
	--enable-mini-luit \
	--enable-narrowproto \
	--enable-exec-xterm \
	--enable-sixel-graphics \
	--enable-block-select \
	--with-tty-group=tty \
	--with-utempter)

prepare:

post_build:
	install -m755 -d package/usr/share/applications
	install -m644 ${BUILDDIR}/xterm.desktop package/usr/share/applications/
	install -m644 ${BUILDDIR}/uxterm.desktop package/usr/share/applications/
	install -Dm644 ${BUILDDIR}/COPYING package/usr/share/licenses/${PKGNAME}/COPYING
	install -Dm644 ${BUILDDIR}/README.i18n package/usr/share/doc/${PKGNAME}/README.i18n

post-install:

include /usr/share/mk/lfs.port.mk
