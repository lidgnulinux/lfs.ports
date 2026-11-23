COMMENT = The LLVM Linker
VERSION = 23.1.5
REVISION = 0
CATEGORIES = tool
PKGNAME = lld
HOMEPAGE = https://llvm.org/
ARCHIVE = llvm-project-${VERSION}.src.tar.xz
LINK = https://github.com/llvm/llvm-project/releases/download/llvmorg-${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = cmake
BUILDDIR = llvm-project-${VERSION}.src/lld
BUILD_OPTION = -G Ninja -DCMAKE_BUILD_TYPE=None \
	-DCMAKE_SKIP_INSTALL_RPATH=ON \
	-DBUILD_SHARED_LIBS=ON \
	-DLLVM_INCLUDE_TESTS=OFF \
	-DLLD_BUILT_STANDALONE=ON
JOBS = -j3

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
