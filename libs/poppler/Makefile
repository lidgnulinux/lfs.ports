COMMENT = PDF rendering library based on xpdf 3.0
VERSION = 25.12.0
REVISION = 0
CATEGORIES = libs
PKGNAME = poppler
HOMEPAGE = https://poppler.freedesktop.org/
ARCHIVE = poppler-25.12.0.tar.xz
LINK = https://poppler.freedesktop.org/poppler-25.12.0.tar.xz
SRCCD = archive
BUILD = cmake
BUILDDIR = poppler-25.12.0
BUILD_OPTION = -DBUILD_CPP_TESTS=OFF \
	-DBUILD_GTK_TESTS=OFF \
	-DBUILD_MANUAL_TESTS=OFF \
	-DBUILD_QT5_TESTS=OFF \
	-DBUILD_QT6_TESTS=OFF \
	-DCMAKE_BUILD_TYPE=RelWithDebInfo \
	-DCMAKE_INSTALL_LIBDIR=lib \
	-DCMAKE_INSTALL_PREFIX=/usr \
	-DENABLE_BOOST=ON \
	-DENABLE_GPGME=OFF \
	-DENABLE_LIBCURL=OFF \
	-DENABLE_QT5=OFF \
	-DENABLE_QT6=OFF \
	-DENABLE_UNSTABLE_API_ABI_HEADERS=ON

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
