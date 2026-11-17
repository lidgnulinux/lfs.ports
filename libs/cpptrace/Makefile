COMMENT = Simple, portable, and self-contained stacktrace library for C++11 and newer
VERSION = 1.0.4
REVISION = 0
CATEGORIES = libs
PKGNAME = cpptrace
HOMEPAGE = https://github.com/jeremy-rifkin/cpptrace
ARCHIVE = v${VERSION}.tar.gz
LINK = https://github.com/jeremy-rifkin/cpptrace/archive/refs/tags/${ARCHIVE}
SRCCD = archive
BUILD = cmake
BUILDDIR = cpptrace-${VERSION}
BUILD_OPTION = -DBUILD_SHARED_LIBS=On \
	-DCPPTRACE_FIND_LIBDWARF_WITH_PKGCONFIG=On \
	-DCPPTRACE_STATIC_DEFINE=Off \
	-DCPPTRACE_STD_FORMAT=On \
	-DCPPTRACE_UNWIND_WITH_LIBUNWIND=On \
	-DCPPTRACE_USE_EXTERNAL_LIBDWARF=On \
	-DCPPTRACE_USE_EXTERNAL_ZSTD=On

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
