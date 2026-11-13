COMMENT = Steel Bank Common Lisp
VERSION = 2.6.8
REVISION = 0
CATEGORIES = tool
PKGNAME = sbcl
HOMEPAGE = https://www.sbcl.org/
ARCHIVE = sbcl-${VERSION}-source.tar.bz2
LINK = https://prdownloads.sourceforge.net/sbcl/sbcl-${VERSION}-source.tar.bz2
SRCCD = archive
BUILD = custom
BUILDDIR = sbcl-${VERSION}
BUILD_OPTION = --with-sb-core-compression \
	--with-sb-linkable-runtime \
	--fancy --with-sb-thread

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/musl-time64.patch

custom-build:
	cd ${BUILDDIR}; GNUMAKE=make ./make.sh sbcl --prefix=/usr ${BUILD_OPTION}
	cd ${BUILDDIR}; HOME="${BUILDDIR}" src/runtime/sbcl --core output/sbcl.core \
		--no-sysinit --no-userinit --disable-debugger \
		--eval '(ignore-errors (sb-ext:set-sbcl-source-location "/usr/share/sbcl/source/"))' \
		--eval '(sb-ext:save-lisp-and-die "output/sbcl.core")'

post_build:
	cd ${BUILDDIR}; INSTALL_ROOT="$(CURDIR)/pkg/usr" \
		LIB_DIR="/usr/lib" \
		DOC_DIR="$(CURDIR)/pkg/usr/share/doc/sbcl" \
		sh install.sh
	rmdir pkg/usr/share/doc/sbcl/html 2>/dev/null || true
	rmdir pkg/usr/share/info 2>/dev/null || true

post-install:

include /usr/share/mk/lfs.port.mk
