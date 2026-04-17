COMMENT = Fast C++ logging library
VERSION = 1.17.0
REVISION = 0
CATEGORIES = libs
PKGNAME = spdlog
HOMEPAGE = https://github.com/gabime/spdlog
ARCHIVE = spdlog-v1.17.0.tar.gz
LINK = https://github.com/gabime/spdlog/archive/v1.17.0/spdlog-v1.17.0.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = spdlog-1.17.0
BUILD_OPTION = -DSPDLOG_BUILD_BENCH=OFF \
	-DSPDLOG_BUILD_TESTS=OFF \
	-DSPDLOG_SANITIZE_ADDRESS=OFF \
	-DSPDLOG_FMT_EXTERNAL=OFF \
	-DSPDLOG_BUILD_SHARED=ON \
	-DSPDLOG_BUILD_EXAMPLE=OFF

prepare:

post_build:
	sed -e 's|.*#define SPDLOG_FMT_EXTERNAL|#define SPDLOG_FMT_EXTERNAL|' \
		-i package/usr/include/spdlog/tweakme.h

post-install:

include /usr/share/mk/lfs.port.mk
