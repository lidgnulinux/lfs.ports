COMMENT = C library for reading and writing files containing sampled sound
VERSION = 1.2.2
REVISION = 0
CATEGORIES = libs
PKGNAME = libsndfile
HOMEPAGE = https://libsndfile.github.io/libsndfile/
ARCHIVE = libsndfile-1.2.2.tar.xz
LINK = https://github.com/libsndfile/libsndfile/releases/download/1.2.2/libsndfile-1.2.2.tar.xz
SRCCD = archive
BUILD = cmake
BUILDDIR = libsndfile-1.2.2
BUILD_OPTION = -DBUILD_SHARED_LIBS=ON \
	-DCMAKE_BUILD_TYPE=MinSizeRel \
	-DCMAKE_INSTALL_PREFIX=/usr \
	-DCMAKE_INSTALL_LIBDIR=/usr/lib \
	-DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
	-DBUILD_TESTING=OFF

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/CVE-2024-50612.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
