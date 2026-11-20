COMMENT = QT GUI for Neovim
VERSION = 0.2.20
REVISION = 0
CATEGORIES = editor
PKGNAME = neovim_qt
HOMEPAGE = https://github.com/equalsraf/neovim-qt
ARCHIVE = v0.2.20.tar.gz
LINK = https://github.com/equalsraf/neovim-qt/archive/${ARCHIVE}
SRCCD = archive
BUILD = cmake
BUILDDIR = neovim-qt-0.2.20
BUILD_OPTION = -DCMAKE_BUILD_TYPE=Release -DUSE_SYSTEM_MSGPACK=on -DWITH_QT=Qt6

prepare:
	sed -i 's/msgpack-c 6.0.0/msgpack-c 7.0.0/g' ${BUILDDIR}/CMakeLists.txt

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
