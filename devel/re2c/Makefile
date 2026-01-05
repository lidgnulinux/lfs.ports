COMMENT = Lexer generator for C, C++ and Go
VERSION = 4.4
REVISION = 0
CATEGORIES = devel
PKGNAME = re2c
HOMEPAGE = http://www.re2c.org
ARCHIVE = re2c-4.4.tar.xz
LINK = https://github.com/skvadrik/re2c/releases/download/4.4/re2c-4.4.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = re2c-4.4
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
