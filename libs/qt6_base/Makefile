COMMENT = A cross-platform application and UI framework
VERSION = 6.12.0
_V = 6.12
REVISION = 0
CATEGORIES = libs
PKGNAME = qt6_base
HOMEPAGE = https://qt.io/
ARCHIVE = qtbase-everywhere-src-${VERSION}.tar.xz
LINK = https://download.qt.io/official_releases/qt/${_V}/${VERSION}/submodules/${ARCHIVE}
SRCCD = archive
BUILD = cmake
BUILDDIR = qtbase-everywhere-src-${VERSION}
BUILD_OPTION = -G Ninja -Wno-dev \
	-DCMAKE_BUILD_TYPE=Release \
	-DCMAKE_INSTALL_PREFIX=/usr \
	-DCMAKE_INTERPROCEDURAL_OPTIMIZATION=ON \
	-DINSTALL_BINDIR=lib/qt6/bin \
	-DINSTALL_PUBLICBINDIR=bin \
	-DINSTALL_DOCDIR=share/doc/qt6 \
	-DINSTALL_ARCHDATADIR=lib/qt6 \
	-DINSTALL_DATADIR=share/qt6 \
	-DINSTALL_INCLUDEDIR=include/qt6 \
	-DINSTALL_MKSPECSDIR=lib/qt6/mkspecs \
	-DINSTALL_EXAMPLESDIR=share/doc/qt6/examples \
	-DQT_FEATURE_journald=OFF \
	-DFEATURE_libproxy=ON \
	-DFEATURE_dtls=OFF \
	-DQT_FEATURE_openssl_linked=ON \
	-DQT_FEATURE_reduce_relocations=OFF \
	-DQT_FEATURE_system_sqlite=ON \
	-DQT_FEATURE_system_xcb_xinput=ON \
	-DQT_FEATURE_vulkan=OFF \
	-DQT_FEATURE_xcb=ON \
	-DQT_FEATURE_relocatable=OFF \
	-DQT_FEATURE_accessibility=ON \
	-DQT_FEATURE_accessibility_atspi_bridge=ON \
	-DQT_BUILD_TESTS=OFF \
	-DQT_FEATURE_opengles2=ON
JOBS = -j3

prepare:
	patch -p0 -d ${BUILDDIR} < $(CURDIR)/patch/patch-src_network_ssl_qsslsocket_openssl_symbols_cpp
	patch -p0 -d ${BUILDDIR} < $(CURDIR)/patch/patch-src_plugins_tls_openssl_qopenssl_p_h
	patch -p0 -d ${BUILDDIR} < $(CURDIR)/patch/patch-src_plugins_tls_openssl_qsslcontext_openssl_cpp
	patch -p0 -d ${BUILDDIR} < $(CURDIR)/patch/patch-src_plugins_tls_openssl_qsslsocket_openssl_symbols_p_h
	patch -p0 -d ${BUILDDIR} < $(CURDIR)/patch/patch-src_plugins_tls_openssl_qx509_openssl_cpp

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
