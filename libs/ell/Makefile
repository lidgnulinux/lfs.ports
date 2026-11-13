COMMENT = Linux library for embedded development
VERSION = 0.80
REVISION = 0
CATEGORIES = libs
PKGNAME = ell
HOMEPAGE = https://01.org/ell
ARCHIVE = ell-0.80.tar.gz
LINK = https://mirrors.edge.kernel.org/pub/linux/libs/ell/ell-0.80.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = ell-0.80
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =
GRAFT = no

prepare:
	patch -p1 -i $(CURDIR)/use-libgen-basename.patch -d ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
