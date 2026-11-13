COMMENT = An Extremely fast, In-Memory JSON and Interface Library for Modern C++
VERSION = 7.7.0
REVISION = 0
CATEGORIES = libs
PKGNAME = glaze
HOMEPAGE = https://github.com/stephenberry/glaze
ARCHIVE = glaze-${VERSION}.tar.gz
LINK = https://github.com/stephenberry/glaze/archive/v${VERSION}/glaze-${VERSION}.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = glaze-${VERSION}
BUILD_OPTION = -Dglaze_ENABLE_FUZZING=OFF \
	-Dglaze_DEVELOPER_MODE=OFF \
	-Dglaze_INSTALL_CMAKEDIR=/usr/lib/cmake/glaze \
	-DCMAKE_BUILD_TYPE=None

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
