COMMENT = Portable version of the NetBSD make build tool
VERSION = 20260313
REVISION = 1
CATEGORIES = devel
PKGNAME = bmake
HOMEPAGE = https://www.crufty.net/help/sjg/bmake.html
ARCHIVE = bmake-20260313.tar.gz
LINK = https://www.crufty.net/ftp/pub/sjg/bmake-20260313.tar.gz
SRCCD = archive
BUILD = bmake
BUILDDIR = bmake

prepare:
	cd ${BUILDDIR}; ./configure \
		--prefix=/usr

post_build:
	rm -rf package/usr/share/man/cat1

	install -Dm644 ${BUILDDIR}/bmake.1 \
		package/usr/share/man/man1/bmake.1

	install -Dm644 ${BUILDDIR}/{README,ChangeLog} \
		-t package/usr/share/doc/bmake/

post-install:

include /usr/share/mk/lfs.port.mk
