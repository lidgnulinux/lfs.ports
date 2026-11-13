COMMENT = An ICC-based CMM for color management.
VERSION = 2.20
REVISION = 0
CATEGORIES = libs
PKGNAME = lcms2
HOMEPAGE = https://www.littlecms.com
ARCHIVE = lcms2-${VERSION}.tar.gz
LINK = https://sourceforge.net/projects/lcms/files/lcms/${VERSION}/lcms2-${VERSION}.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = lcms2-${VERSION}
BUILD_OPTION = -Dfastfloat=true \
	-Dthreaded=true \
	-Dutils=true \
	-Djpeg=enabled \
	-Dtiff=enabled

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
