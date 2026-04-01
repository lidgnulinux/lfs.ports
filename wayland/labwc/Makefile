COMMENT = Wayland stacking compositor
VERSION = 0.9.6
_WLR = 0.19.3
REVISION = 0
CATEGORIES = wayland
PKGNAME = labwc
HOMEPAGE = https://github.com/labwc/labwc
ARCHIVE = labwc-0.9.6.tar.gz
WLR_ARCHIVE = wlroots-${_WLR}.tar.gz
LINK = https://github.com/labwc/labwc/archive/0.9.6/labwc-0.9.6.tar.gz
LINK_WLR = https://gitlab.freedesktop.org/wlroots/wlroots/-/archive/${_WLR}/${WLR_ARCHIVE}
SRCCD = archive
BUILD = meson
BUILDDIR = labwc-0.9.6
BUILD_OPTION = -Dman-pages=enabled

prepare:
	@if [ ! -f ${WLR_ARCHIVE} ]; then \
		echo "File not found. Downloading ${WLR_ARCHIVE}..."; \
		wget -c ${LINK_WLR}; \
	else \
		echo "Archive ${WLR_ARCHIVE} already exists. Skipping."; \
	fi

	tar -xvf ${WLR_ARCHIVE} -C ${BUILDDIR}/subprojects
	mv ${BUILDDIR}/subprojects/wlroots-0.19.3 \
		${BUILDDIR}/subprojects/wlroots

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
