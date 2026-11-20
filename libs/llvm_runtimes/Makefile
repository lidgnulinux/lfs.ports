COMMENT = LLVM Runtimes
VERSION = 23.1.5
REVISION = 0
CATEGORIES = libs
PKGNAME = llvm_runtimes
HOMEPAGE = https://llvm.org/
ARCHIVE = llvm-project-${VERSION}.src.tar.xz
LINK = https://github.com/llvm/llvm-project/releases/download/llvmorg-${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = cmake
BUILDDIR = llvm-project-${VERSION}.src/runtimes 
BUILD_OPTION = -G Ninja -DCMAKE_BUILD_TYPE=Release \
		-DLLVM_ENABLE_RUNTIMES="compiler-rt;libunwind;libcxx;libcxxabi" \
		-DLIBUNWIND_HAS_NODEFAULTLIBS_FLAG=OFF \
		-DCOMPILER_RT_INCLUDE_TESTS=OFF \
		-DCOMPILER_RT_BUILD_SANITIZERS=ON \
		-DCMAKE_VERBOSE_MAKEFILE=ON
export CC = clang
export CXX = clang++
JOBS = -j3

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
