COMMENT = Vim-fork focused on extensibility and agility
VERSION = 0.12.0
REVISION = 0
CATEGORIES = editor
PKGNAME = neovim
HOMEPAGE = https://neovim.io/
ARCHIVE = v${VERSION}.tar.gz
LINK = https://github.com/neovim/neovim/archive/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = neovim-${VERSION}
MAKEOPT = CMAKE_FLAGS="-D CI_BUILD=ON \
	-D CMAKE_INSTALL_PREFIX:PATH=/opt \
	-DCMAKE_INSTALL_LIBDIR=lib"

prepare:
	make -C ${BUILDDIR} deps

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
