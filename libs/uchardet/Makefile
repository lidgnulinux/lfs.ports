COMMENT = Encoding detector library ported from Mozilla
VERSION = 0.0.8
REVISION = 0
CATEGORIES = libs
PKGNAME = uchardet
HOMEPAGE = https://www.freedesktop.org/wiki/Software/uchardet
SRCCD = archive
ARCHIVE = uchardet-${VERSION}.tar.xz
LINK = https://www.freedesktop.org/software/uchardet/releases/${ARCHIVE}
BUILD = cmake
BUILDDIR = uchardet-${VERSION} 
BUILD_OPTION = -DBUILD_SHARED_LIBS=True \
	-DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
	-DCMAKE_BUILD_TYPE=None

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
