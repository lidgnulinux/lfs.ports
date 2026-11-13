COMMENT = Library for the vp8/vp9 codecs
VERSION = 1.17.0
REVISION = 0
CATEGORIES = libs
PKGNAME = libvpx
HOMEPAGE = https://www.webmproject.org/
ARCHIVE = libvpx-v${VERSION}.tar.gz
LINK = https://github.com/webmproject/libvpx/archive/v${VERSION}/libvpx-v${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libvpx-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--libdir=/usr/lib \
	--disable-install-srcs \
	--disable-static \
	--enable-libs \
	--enable-multithread \
	--enable-pic \
	--enable-postproc \
	--enable-runtime-cpu-detect \
	--enable-shared \
	--enable-temporal-denoising \
	--enable-unit-tests \
	--enable-vp8 \
	--enable-vp9 \
	--enable-vp9-highbitdepth \
	--enable-vp9-postproc \
	--enable-vp9-temporal-denoising \
	--target=generic-gnu)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
