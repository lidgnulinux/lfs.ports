COMMENT = File structure for the Ogg bitstream format.
VERSION = 1.3.6
REVISION = 0
CATEGORIES = libs
PKGNAME = libogg
HOMEPAGE = https://www.xiph.org/ogg/
ARCHIVE = libogg-1.3.6.tar.gz
LINK = https://ftp.osuosl.org/pub/xiph/releases/ogg/libogg-1.3.6.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libogg-1.3.6
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-shared=yes)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
