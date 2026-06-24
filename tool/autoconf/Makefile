COMMENT = GNU tool for automatically configuring source code
VERSION = 2.73
REVISION = 0
CATEGORIES = tool
PKGNAME = autoconf
HOMEPAGE = https://www.gnu.org/software/autoconf
ARCHIVE = autoconf-2.73.tar.gz
LINK = https://ftp.gnu.org/gnu/autoconf/autoconf-2.73.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = autoconf-2.73
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && M4=/usr/bin/m4 ./configure \
	--prefix=/usr \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =
STRIP = no

prepare:

post_build:
	rm -f package/usr/share/info/dir
	rm -f package/usr/share/info/standards.info

post-install:

include /usr/share/mk/lfs.port.mk
