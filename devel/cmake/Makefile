COMMENT = Cross-platform open-source make system.
VERSION = 4.2.3
_V= 4.2
REVISION = 0
CATEGORIES = devel
PKGNAME = cmake
HOMEPAGE = https://www.cmake.org
ARCHIVE = cmake-${VERSION}.tar.gz
LINK = https://cmake.org/files/v${_V}/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = cmake-${VERSION}/build

prepare:
	sed -i '/"lib64"/s/64//' cmake-${VERSION}/Modules/GNUInstallDirs.cmake
	mkdir ${BUILDDIR}
	cd ${BUILDDIR} && ../bootstrap \
		--prefix=/usr \
		--system-libuv \
		--system-expat \
		--system-zlib \
		--system-bzip2 \
		--system-libarchive \
		--no-system-jsoncpp \
		--no-system-curl \
		--no-system-cppdap \
		--no-system-nghttp2 \
		--generator="Unix Makefiles" \
		--parallel=4

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
