COMMENT = cargo subcommand to build and install C-ABI compatibile dynamic and static libraries
VERSION = 0.10.21
REVISION = 0
CATEGORIES = devel
PKGNAME = cargo_c
HOMEPAGE = https://github.com/lu-zero/cargo-c
ARCHIVE = v0.10.21.tar.gz
LINK = https://github.com/lu-zero/cargo-c/archive/v0.10.21.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = cargo-c-0.10.21
export LIBSSH2_SYS_USE_PKG_CONFIG=1
export DEP_NGHTTP2_ROOT=/usr
export LIBGIT2_NO_VENDOR=1
export RUSTFLAGS=-C target-feature=-crt-static

prepare:
	cp -r Cargo.lock ${BUILDDIR}/Cargo.lock

custom-build:
	cd ${BUILDDIR} && cargo build --release

post_build:
	find ${BUILDDIR}/target/release -maxdepth 1 \
		-type f -executable -exec install -D -m755 -t pkg/usr/bin {} +

post-install:

include /usr/share/mk/lfs.port.mk
