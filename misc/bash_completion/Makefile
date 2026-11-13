COMMENT = Command-line tab-completion for bash
VERSION = 2.18.0
REVISION = 0
CATEGORIES = misc
PKGNAME = bash_completion
HOMEPAGE = https://github.com/scop/bash-completion
ARCHIVE = bash-completion-${VERSION}.tar.xz
LINK = https://github.com/scop/bash-completion/releases/download/${VERSION}/bash-completion-${VERSION}.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = bash-completion-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:
	autoreconf -fiv ${BUILDDIR}

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
