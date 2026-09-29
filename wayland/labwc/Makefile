COMMENT = Wayland stacking compositor
VERSION = 0.20.2
REVISION = 0
CATEGORIES = wayland
PKGNAME = labwc
HOMEPAGE = https://github.com/labwc/labwc
ARCHIVE = labwc-${VERSION}.tar.gz
LINK = https://github.com/labwc/labwc/archive/${VERSION}/labwc-${VERSION}.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = labwc-${VERSION}
BUILD_OPTION = -Dman-pages=enabled

prepare:

post_build:
	mkdir -p "build/package/etc/labwc"
	install -Dm0644 ${BUILDDIR}/docs/rc.xml.all \
		"build/package/etc/labwc/rc.xml"
	install -Dm0644 ${BUILDDIR}/docs/menu.xml \
		"build/package/etc/labwc/menu.xml"
	install -Dm0644 ${BUILDDIR}/docs/themerc \
		"build/package/etc/labwc/themerc"
	install -Dm0644 ${BUILDDIR}/docs/environment \
		"build/package/etc/labwc/environment"

post-install:

include /usr/share/mk/lfs.port.mk
