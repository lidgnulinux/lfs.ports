COMMENT = Library for JPEG images.
VERSION = 3.2.0
REVISION = 0
CATEGORIES = libs
PKGNAME = libjpeg_turbo
HOMEPAGE = https://libjpeg-turbo.org/
ARCHIVE = libjpeg-turbo-${VERSION}.tar.gz
LINK = https://github.com/libjpeg-turbo/libjpeg-turbo/releases/download/${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = cmake
BUILDDIR = libjpeg-turbo-${VERSION}
BUILD_OPTION = -DCMAKE_BUILD_TYPE=Release -DWITH_JPEG8=1

prepare:

post_build:
	install -vDm 644 ${BUILDDIR}/src/jpegint.h package/usr/include

post-install:

include /usr/share/mk/lfs.port.mk
