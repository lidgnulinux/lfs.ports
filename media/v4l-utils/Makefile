COMMENT = Utilities and libraries to handle media devices.
VERSION = 1.32.0
REVISION = 0
CATEGORIES = media
PKGNAME = v4l_utils
HOMEPAGE = https://www.linuxtv.org
ARCHIVE = v4l-utils-1.32.0.tar.xz
LINK = https://www.linuxtv.org/downloads/v4l-utils/v4l-utils-1.32.0.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = v4l-utils-1.32.0
BUILD_OPTION = -Dv4l2-tracer=disabled

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
