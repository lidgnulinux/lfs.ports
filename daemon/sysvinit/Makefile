COMMENT = The System V init (version ${VERSION}).
VERSION = 3.18
REVISION = 0
CATEGORIES = daemon
PKGNAME = sysvinit
HOMEPAGE = https://savannah.nongnu.org/projects/sysvinit
ARCHIVE = ${VERSION}.tar.gz
LINK = https://codeberg.org/thejessesmith/sysvinit/archive/${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = sysvinit
MAKEOPT = ROOT=$(PWD)/package
CPPFLAGS = -D_FORTIFY_SOURCE=1
export CPPFLAGS

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

_install:
	$(MAKE) -C ${BUILDDIR} PREFIX=/usr install 
	install  -Dm644 $(PWD)/Makefile /var/lib/mk/${PACKAGE}.mk

include /usr/share/mk/lfs.port.mk
