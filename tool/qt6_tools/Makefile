COMMENT = A cross-platform application and UI framework (Development Tools, QtHelp)
VERSION = 6.12.0
_V = 6.12
REVISION = 0
CATEGORIES = tools
PKGNAME = qt6_tools
HOMEPAGE = https://www.qt.io
ARCHIVE = qttools-everywhere-src-${VERSION}.tar.xz
LINK = https://download.qt.io/official_releases/qt/${_V}/${VERSION}/submodules/${ARCHIVE}
SRCCD = archive
BUILD = cmake
BUILDDIR = qttools-everywhere-src-${VERSION}
BUILD_OPTION = -G Ninja -DQT_INSTALL_XDG_DESKTOP_ENTRIES=ON \
	-DQLITEHTML_USE_SYSTEM_LITEHTML=ON \
	-DCMAKE_MESSAGE_LOG_LEVEL=STATUS
JOBS = -j3

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
