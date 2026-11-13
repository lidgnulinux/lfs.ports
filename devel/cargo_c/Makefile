COMMENT = cargo subcommand to build and install C-ABI compatibile dynamic and static libraries
VERSION = 0.10.26
REVISION = 0
CATEGORIES = devel
PKGNAME = cargo_c
HOMEPAGE = https://github.com/lu-zero/cargo-c
ARCHIVE = v${VERSION}.tar.gz
LINK = https://github.com/lu-zero/cargo-c/archive/v${VERSION}.tar.gz
SRCCD = archive
BUILD = cargo
BUILDDIR = cargo-c-${VERSION}
export LIBSSH2_SYS_USE_PKG_CONFIG=1
export DEP_NGHTTP2_ROOT=/usr
export LIBGIT2_NO_VENDOR=1

prepare:
	cp -r Cargo.lock ${BUILDDIR}/Cargo.lock

post_build:
	find ${BUILDDIR}/target/release -maxdepth 1 \
		-type f -executable -exec install -D -m755 -t pkg/usr/bin {} +

post-install:

include /usr/share/mk/lfs.port.mk
