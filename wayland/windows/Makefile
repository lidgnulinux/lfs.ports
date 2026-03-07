COMMENT = Window overview and selection for Wayland compositors. 
VERSION = 1.0.ca2d0e77c
_REV = a2d0e77c14754a7656b2598f073267af646dc8c7
REVISION = 0
CATEGORIES = wayland
PKGNAME = windows
HOMEPAGE = https://github.com/RadioNoiseE/windows
ARCHIVE = ${_REV}.tar.gz 
LINK = https://github.com/RadioNoiseE/windows/archive/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = windows-${_REV}
MAKEOPT =
MKINST = no

prepare:

post_build:
	install -Dm755 ${BUILDDIR}/windows -t package/usr/bin/

post-install:

include /usr/share/mk/lfs.port.mk
