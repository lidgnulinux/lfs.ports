COMMENT = A wlroots-compatible Wayland color picker that does not suck.
VERSION = 0.3.0
REVISION = 0
CATEGORIES = tool
PKGNAME = hyprpicker
HOMEPAGE = https://github.com/hyprwm/hyprpicker
ARCHIVE = v0.3.0.tar.gz
LINK = https://github.com/hyprwm/hyprpicker/archive/v0.3.0.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = hyprpicker-0.3.0
BUILD_OPTION = -DCMAKE_BUILD_TYPE='None' \
	-DCMAKE_INSTALL_PREFIX='/usr' \
	-DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
	-Wno-dev

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:
	mkdir -p package/usr/share/man/
	mv package/man1 package/usr/share/man/

post-install:

include /usr/share/mk/lfs.port.mk
