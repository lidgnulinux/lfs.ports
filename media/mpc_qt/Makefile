COMMENT = A clone of Media Player Classic reimplemented in Qt.
VERSION = 26.07.ca983fd94
_SHA = a983fd94632a1a670aaa8e516a52e34fd1779cfe
REVISION = 1
CATEGORIES = media
PKGNAME = mpc_qt
HOMEPAGE = https://github.com/mpc-qt/mpc-qt
ARCHIVE = ${_SHA}.tar.gz
LINK = https://github.com/mpc-qt/mpc-qt/archive/${ARCHIVE}
SRCCD = archive
BUILD = cmake
BUILDDIR = mpc-qt-${_SHA}
BUILD_OPTION = -DCMAKE_INSTALL_PREFIX=/usr -DMPCQT_VERSION="${VERSION}"

ifeq ($(CLANG),1)
	export CC = clang
	export CXX = clang++
endif

prepare:
ifeq ($(CLANG),1)
	@echo "no need to tinker mpvwidget.cpp"
else
	@sed -i -e '/void/s/ GLAPIENTRY//' ${BUILDDIR}/src/mpvwidget.cpp
endif

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
