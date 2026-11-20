COMMENT = Incremental parsing library
VERSION = 0.27.2
REVISION = 0
CATEGORIES = libs
PKGNAME = tree_sitter
HOMEPAGE = https://github.com/tree-sitter/tree-sitter
ARCHIVE = v${VERSION}.tar.gz
LINK = https://github.com/tree-sitter/tree-sitter/archive/${ARCHIVE}
SRCCD = archive
BUILD = cmake
BUILDDIR = tree-sitter-${VERSION}
BUILD_OPTION = -DCMAKE_INTERPROCEDURAL_OPTIMIZATION=ON

prepare:

tree-sitter-cli:
	cargo build --release --manifest-path ${BUILDDIR}/crates/cli/Cargo.toml 

completions:
	cargo run --release --manifest-path ${BUILDDIR}/crates/cli/Cargo.toml \
		-- complete --shell bash > bash-completions

post_build:
	install -Dt package/usr/bin ${BUILDDIR}/target/release/tree-sitter
	install -Dm644 bash-completions package/usr/share/bash-completion/completions/tree-sitter

post-install:

include /usr/share/mk/lfs.port.mk
