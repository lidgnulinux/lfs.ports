COMMENT = Hyprland graphics / resource utilities
VERSION = 0.5.1
REVISION = 0
CATEGORIES = libs
PKGNAME = hyprgraphics
HOMEPAGE = https://github.com/hyprwm/hyprgraphics
ARCHIVE = hyprgraphics-v0.5.1.tar.gz
LINK = https://github.com/hyprwm/hyprgraphics/archive/v0.5.1/hyprgraphics-v0.5.1.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = hyprgraphics-0.5.1
BUILD_OPTION =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
