COMMENT = Portable version of the NetBSD make build tool (static)
VERSION = 20260313
REVISION = 0
CATEGORIES = devel
PKGNAME = bmake_static
HOMEPAGE = https://www.crufty.net/help/sjg/bmake.html
ARCHIVE = bmake-20260313.tar.gz
LINK = https://www.crufty.net/ftp/pub/sjg/bmake-20260313.tar.gz
SRCCD = archive
BUILD = bmake
BUILDDIR = bmake
export LDFLAGS = -static

prepare:
	cd ${BUILDDIR}; ./configure --prefix=/opt

post_build:
	rm -rf package/usr/share/man/cat1

	install -Dm644 ${BUILDDIR}/bmake.1 \
		package/usr/share/man/man1/bmake-static.1

	install -Dm644 ${BUILDDIR}/{README,ChangeLog} \
		-t package/usr/share/doc/bmake-static/

post-install:

include /usr/share/mk/lfs.port.mk
