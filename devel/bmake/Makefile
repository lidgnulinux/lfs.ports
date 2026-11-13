COMMENT = Portable version of the NetBSD make build tool
VERSION = 20260912
REVISION = 0
CATEGORIES = devel
PKGNAME = bmake
HOMEPAGE = https://www.crufty.net/help/sjg/bmake.html
ARCHIVE = bmake-${VERSION}.tar.gz
LINK = https://www.crufty.net/ftp/pub/sjg/bmake-${VERSION}.tar.gz
SRCCD = archive
BUILDDIR = bmake
STRIP = no
BOOTSTRAP = yes
ifeq ($(BOOTSTRAP),no) 
	export BUILD = bmake
else
	export BUILD = custom
endif 

prepare:
ifeq ($(BOOTSTRAP),no) 
	cd ${BUILDDIR}; ./configure --prefix=/usr
else
	@echo "no configure."
endif

custom-build:
	cd ${BUILDDIR}; sh ./boot-strap --with-default-sys-path=/usr/share/mk op=build
	cd ${BUILDDIR}; sh ./boot-strap --prefix=/usr --with-mksrc=/usr/share/mk \
			--install-destdir=$(CURDIR)/pkg op=install

post_build:
ifeq ($(BOOTSTRAP),no) 
	rm -rf package/usr/share/man/cat1
	rm -rf package/usr/share/man/cat1
	install -Dm644 ${BUILDDIR}/bmake.1 \
		package/usr/share/man/man1/bmake.1
	install -Dm644 ${BUILDDIR}/{README,ChangeLog} \
		-t package/usr/share/doc/bmake/
else
	rm -rf pkg/usr/share/man/cat1
	rm -rf pkg/usr/share/man/cat1
	install -Dm644 ${BUILDDIR}/bmake.1 \
		pkg/usr/share/man/man1/bmake.1
	install -Dm644 ${BUILDDIR}/{README,ChangeLog} \
		-t pkg/usr/share/doc/bmake/
endif

post-install:

include /usr/share/mk/lfs.port.mk
