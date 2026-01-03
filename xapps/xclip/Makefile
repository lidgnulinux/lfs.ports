COMMENT = Command line interface to the X11 clipboard
VERSION = 0.13
REVISION = 0
CATEGORIES = xapps
PKGNAME = xclip
HOMEPAGE = https://github.com/astrand/xclip
ARCHIVE = 0.13.tar.gz
LINK = https://github.com/astrand/xclip/archive/0.13.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = xclip-0.13
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	autoreconf -fi ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
