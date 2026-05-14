COMMENT = Aquamarine is a very light linux rendering backend library
VERSION = 0.11.0
REVISION = 0
CATEGORIES = libs
PKGNAME = aquamarine
HOMEPAGE = https://github.com/hyprwm/aquamarine
ARCHIVE = aquamarine-v0.11.0.tar.gz
LINK = https://github.com/hyprwm/aquamarine/archive/v0.11.0/aquamarine-v0.11.0.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = aquamarine-0.11.0
BUILD_OPTION =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
