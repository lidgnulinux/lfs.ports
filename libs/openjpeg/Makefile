COMMENT = OpenJPEG is an open-source JPEG 2000 codec.
VERSION = 2.5.4
REVISION = 0
CATEGORIES = libs
PKGNAME = openjpeg
HOMEPAGE = https://www.openjpeg.org
ARCHIVE = openjpeg-2.5.4.tar.gz
LINK = https://github.com/uclouvain/openjpeg/archive/v2.5.4/openjpeg-2.5.4.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = openjpeg-2.5.4
BUILD_OPTION = -DCMAKE_BUILD_TYPE=Release \
	-DCMAKE_SKIP_INSTALL_RPATH=YES \
	-DBUILD_STATIC_LIBS=OFF \
	-DBUILD_DOC=off

prepare:
	find ${BUILDDIR}/thirdparty/ -mindepth 1 -maxdepth 1 -type d -exec rm -rf {} \;

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
