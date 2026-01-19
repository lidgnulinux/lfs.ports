COMMENT = Wayland stacking compositor
VERSION = 0.9.3
REVISION = 0
CATEGORIES = wayland
PKGNAME = labwc
HOMEPAGE = https://github.com/labwc/labwc
ARCHIVE = labwc-0.9.3.tar.gz
LINK = https://github.com/labwc/labwc/archive/0.9.3/labwc-0.9.3.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = labwc-0.9.3
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
