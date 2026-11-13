COMMENT = Disassembler Library for x86 and x86-64
VERSION = 1.7.2_git20221013
_REV = 5336633af70f3917760a6d441ff02d93477b0c86
REVISION = 0
CATEGORIES = libs
PKGNAME = udis86
HOMEPAGE = https://github.com/canihavesomecoffee/udis86
ARCHIVE = udis86-${_REV}.tar.gz
LINK = https://github.com/canihavesomecoffee/udis86/archive/${_REV}/udis86-${_REV}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = udis86-${_REV}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-shared)
MAKEOPT =

prepare:
	mkdir -p ${BUILDDIR}/build/m4
	autoreconf --force -v --install ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
