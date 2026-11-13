COMMENT = Terminal graphics for the 21st century
VERSION = 1.18.0
REVISION = 0
CATEGORIES = misc
PKGNAME = chafa
HOMEPAGE = https://hpjansson.org/chafa
ARCHIVE = chafa-1.18.0.tar.xz
LINK = https://github.com/hpjansson/chafa/releases/download/1.18.0/chafa-1.18.0.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = chafa-1.18.0
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
