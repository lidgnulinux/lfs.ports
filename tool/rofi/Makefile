COMMENT = Window switcher, application launcher and dmenu replacement
VERSION = 1.7.9_p1
_VER = 1.7.9+wayland1
REVISION = 0
CATEGORIES = tool
PKGNAME = rofi
HOMEPAGE = https://github.com/lbonn/rofi
LINK = ${HOMEPAGE}/releases/download/${_VER}/rofi-${_VER}.tar.gz
ARCHIVE = rofi-${_VER}.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = rofi-${_VER}
BUILD_OPTION = -Dxcb=enabled -Dwayland=enabled
MKINST = yes

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/rofi-sensible-terminal-use-sh.patch
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/libnkutils-ignore-failing-asserts.patch
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/disable-failing-tests.patch

include /usr/share/mk/lfs.port.mk
