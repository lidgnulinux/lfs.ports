COMMENT = Embeddable Javascript engine with a focus on portability and compact footprint
VERSION = 2.7.0
REVISION = 0
CATEGORIES = tool
PKGNAME = duktape
HOMEPAGE = https://duktape.org
ARCHIVE = duktape-2.7.0.tar.xz
LINK = https://duktape.org/duktape-2.7.0.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = duktape-2.7.0
MAKEOPT = -f ./Makefile.sharedlibrary INSTALL_PREFIX=/usr

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:
	make -C ${BUILDDIR} -f ./Makefile.cmdline
	@install -Dvm755 ${BUILDDIR}/duk -t package/usr/bin/

post-install:

include /usr/share/mk/lfs.port.mk
