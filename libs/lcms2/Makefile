COMMENT = An ICC-based CMM for color management.
VERSION = 2.18
REVISION = 0
CATEGORIES = libs
PKGNAME = lcms2
HOMEPAGE = https://www.littlecms.com
ARCHIVE = lcms2-2.18.tar.gz
LINK = https://sourceforge.net/projects/lcms/files/lcms/2.18/lcms2-2.18.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = lcms2-2.18
BUILD_OPTION = --default-library=both \
	-Dfastfloat=true \
	-Dthreaded=true \
	-Dutils=true \
	-Djpeg=enabled \
	-Dtiff=enabled

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
