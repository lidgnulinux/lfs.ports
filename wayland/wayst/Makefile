COMMENT = A simple terminal emulator
VERSION = 0.0.0.cfaa57717
_REV = faa577170048645114b4598386470315b1ba58e1
REVISION = 0
CATEGORIES = wayland
PKGNAME = wayst
HOMEPAGE = https://github.com/91861/wayst
ARCHIVE = ${_REV}.tar.gz
LINK = ${HOMEPAGE}/archive/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = wayst-${_REV}
MAKEOPT =

prepare:
	patch ${BUILDDIR}/Makefile < $(PWD)/default_not_local_install.patch

post_build:
	mkdir -p package/usr/share/applications
	install -Dm644 $(PWD)/wayst.desktop -t package/usr/share/applications/

post-install:

include /usr/share/mk/lfs.port.mk
