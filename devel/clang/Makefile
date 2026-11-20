COMMENT = C language family front-end for LLVM
VERSION = 23.1.5
REVISION = 0
CATEGORIES = devel
PKGNAME = clang
HOMEPAGE = https://llvm.org/
ARCHIVE = llvm-project-${VERSION}.src.tar.xz
LINK = https://github.com/llvm/llvm-project/releases/download/llvmorg-${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = cmake
BUILDDIR = llvm-project-${VERSION}.src/clang
BUILD_OPTION = -B build -G Ninja -Wno-dev \
	-DCLANG_BUILT_STANDALONE=ON \
	-DCLANG_DEFAULT_PIE_ON_LINUX=ON \
	-DCLANG_INCLUDE_TESTS=OFF \
	-DCLANG_LINK_CLANG_DYLIB=ON \
	-DCLANG_PLUGIN_SUPPORT=ON \
	-DCMAKE_BUILD_TYPE=Release \
	-DENABLE_LINKER_BUILD_ID=ON \
	-DLIBCLANG_BUILD_STATIC=ON \
	-DLLVM_INCLUDE_TESTS=OFF \
	-DLLVM_BUILD_TESTS=OFF \
	-DLLVM_ENABLE_RTTI=ON \
	-DLLVM_LINK_LLVM_DYLIB=ON \
	-DLLVM_MAIN_SRC_DIR="llvm-project-${VERSION}.src/llvm"
JOBS = -j3

prepare:
	mv llvm-project-${VERSION}.src/clang-tools-extra ${BUILDDIR}/tools/extra

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
