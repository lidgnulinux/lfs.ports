COMMENT = The Bourne Again SHell (version 5.3.15).
VERSION = 5.3.15
_V= 5.3
REVISION = 0
CATEGORIES = shell
PKGNAME = bash
HOMEPAGE = https://www.gnu.org/software/bash
ARCHIVE = bash-${_V}.tar.gz
LINK = https://ftp.gnu.org/gnu/bash/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = bash-${_V}
AUTO_CONF = (cd ${BUILDDIR} && ./configure --prefix=/usr \
	--libdir=/usr/lib \
	--libexecdir=/usr/libexec/bash \
	--with-installed-readline \
	--without-bash-malloc \
	--enable-readline \
	--build=x86_64-pc-linux-musl) 

prepare:
	patch -Np1 -d ${BUILDDIR} < bash-noinfo.patch
	for i in patch/*; do patch -Np0 -d ${BUILDDIR} < $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
