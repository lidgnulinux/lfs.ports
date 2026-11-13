COMMENT = Tiling, keyboard-driven window manager written in Common Lisp
VERSION = 24.11
REVISION = 0
CATEGORIES = x11-wm
PKGNAME = stumpwm
HOMEPAGE = https://stumpwm.github.io/
ARCHIVE = ${VERSION}.tar.gz
LINK = https://github.com/stumpwm/stumpwm/archive/refs/tags/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = stumpwm-24.11
AUTO_CONF = (cd ${BUILDDIR} && autoconf && ./configure \
	--prefix=/usr \
	--with-module-dir=/usr/share/stumpwm/contrib)
MAKEOPT =
export destdir = $(CURDIR)/package
STRIP = no

prepare:

post_build:
	cd ${BUILDDIR}; makeinfo --html stumpwm.texi

	install -vDm644 -t package/usr/share/doc/${PKGNAME} \
		${BUILDDIR}/{sample-stumpwmrc.lisp,README.md}
	cp -vr ${BUILDDIR}/stumpwm_html package/usr/share/doc/${PKGNAME}/html

	install -vDm644 -t package/usr/share/xsessions $(CURDIR)/stumpwm.desktop
	rm package/usr/share/info/dir

post-install:

include /usr/share/mk/lfs.port.mk
