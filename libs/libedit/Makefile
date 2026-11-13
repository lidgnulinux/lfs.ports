COMMENT = BSD line editing library
VERSION = 20260512-3.1
REVISION = 0
CATEGORIES = libs
PKGNAME = libedit
HOMEPAGE = https://www.thrysoee.dk/editline
ARCHIVE = libedit-20260512-3.1.tar.gz
LINK = https://www.thrysoee.dk/editline/libedit-20260512-3.1.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libedit-20260512-3.1
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--localstatedir=/var)
MAKEOPT =

prepare:

post_build:
	mv package/usr/share/man/man3/editline.3 \
		package/usr/share/man/man3/libedit.3

post-install:

include /usr/share/mk/lfs.port.mk
