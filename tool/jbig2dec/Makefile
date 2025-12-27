COMMENT = JBIG2 image compression format decoder
VERSION = 0.20
REVISION = 0
CATEGORIES = tool
PKGNAME = jbig2dec
HOMEPAGE = https://jbig2dec.com/
ARCHIVE = jbig2dec-0.20.tar.gz
LINK = https://github.com/ArtifexSoftware/jbig2dec/releases/download/0.20/jbig2dec-0.20.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = jbig2dec-0.20
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--without-libpng \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
