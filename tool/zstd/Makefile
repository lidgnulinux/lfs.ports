COMMENT = Zstandard - Fast real-time compression algorithm
VERSION = 1.5.7
REVISION = 0
CATEGORIES = tool
PKGNAME = zstd
HOMEPAGE = https://facebook.github.io/zstd/
ARCHIVE = v1.5.7.tar.gz
LINK = https://github.com/facebook/zstd/archive/v1.5.7.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = zstd-1.5.7/build/meson
CFLAGS = -flto=auto -ffat-lto-objects
CXXFLAGS = -flto=auto -ffat-lto-objects
CPPFLAGS = -flto=auto -ffat-lto-objects
BUILD_OPTION = --default-library=both \
	-Db_ndebug=true \
	-Dbin_contrib=true \
	-Dbin_programs=true \
	-Dbin_tests=false \
	-Dbacktrace=disabled \
	-Dmulti_thread=enabled \
	-Dlz4=disabled \
	-Dlzma=disabled \
	-Dzlib=disabled

export CFLAGS CPPFLAGS CXXFLAGS

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
