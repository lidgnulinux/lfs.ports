COMMENT = Unix command-line tool to interact with an EWMH/NetWM-compatible X Window Manager
VERSION = 1.07
_REV = 1105759c5312061ccfdea407810d2f9b4d274260
REVISION = 0
CATEGORIES = xapps
PKGNAME = wmctrl
HOMEPAGE = https://github.com/Conservatory/wmctrl
ARCHIVE = 1105759c5312061ccfdea407810d2f9b4d274260.tar.gz
LINK = https://github.com/saravanabalagi/wmctrl/archive/${_REV}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = wmctrl-${_REV}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
