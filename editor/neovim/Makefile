COMMENT = Vim-fork focused on extensibility and agility
VERSION = 0.12.0.c08c64bb0
_REV = 08c64bb03684597236680af72d3983a923fecd3e
REVISION = 0
CATEGORIES = editor
PKGNAME = neovim
HOMEPAGE = https://neovim.io/
ARCHIVE = ${_REV}.tar.gz
LINK = https://github.com/neovim/neovim/archive/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = neovim-${_REV}
MAKEOPT = CMAKE_FLAGS="-D CI_BUILD=ON \
	-D CMAKE_INSTALL_PREFIX:PATH=/opt \
	-DCMAKE_INSTALL_LIBDIR=lib"

prepare:
	make -C ${BUILDDIR} deps

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
