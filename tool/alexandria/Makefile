COMMENT = A set of Common Lisp Utilities
VERSION = 1.4
REVISION = 0
CATEGORIES = tool
PKGNAME = alexandria
HOMEPAGE = https://alexandria.common-lisp.dev
ARCHIVE = alexandria-v${VERSION}.tar.gz
LINK = https://gitlab.common-lisp.net/alexandria/alexandria/-/archive/v${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = alexandria-v1.4/doc
MAKEOPT = html info
MKINST = no
STRIP = no

prepare:

post_build:
	install -vd $(CURDIR)/package/usr/share/common-lisp/source/${PKGNAME}
	cp -vr ${BUILDDIR}/../${PKGNAME}.asd ${BUILDDIR}/../alexandria-{1,2} \
		$(CURDIR)/package/usr/share/common-lisp/source/${PKGNAME}
	install -vDm644 -t $(CURDIR)/package/usr/share/doc/${pkgname} \
		${BUILDDIR}/../README
	install -vDm644 -t $(CURDIR)/package/usr/share/doc/${pkgname} \
		${BUILDDIR}/alexandria.html
	install -vDm644 ${BUILDDIR}/alexandria.info \
		$(CURDIR)/package/usr/share/info/${PKGNAME}.info
	install -vDm644 -t $(CURDIR)/package/usr/share/licenses/ \
		${BUILDDIR}/../LICENCE

post-install:

include /usr/share/mk/lfs.port.mk
