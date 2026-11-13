COMMENT = XCB utility library that gives human readable names to error, event, & request codes
VERSION = 1.0.1
REVISION = 0
CATEGORIES = libs
PKGNAME = xcb_util_errors
HOMEPAGE = https://gitlab.freedesktop.org/xorg/lib/libxcb-errors
ARCHIVE = libxcb-errors-xcb-util-errors-1.0.1.tar.gz
LINK = https://gitlab.freedesktop.org/xorg/lib/libxcb-errors/-/archive/xcb-util-errors-1.0.1/libxcb-errors-xcb-util-errors-1.0.1.tar.gz
_REV = c617eee22ae5c285e79e81ec39ce96862fd3262f
_M4 = https://gitlab.freedesktop.org/xorg/util/xcb-util-m4/-/archive/${_REV}/xcb-util-m4-${_REV}.tar.gz
M4SRC = xcb-util-m4-${_REV}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libxcb-errors-xcb-util-errors-1.0.1
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:
	wget -c ${_M4} 
	rmdir ${BUILDDIR}/m4
	tar -xf ${M4SRC} -C ${BUILDDIR}
	mv ${BUILDDIR}/xcb-util-m4-${_REV} ${BUILDDIR}/m4
	cd ${BUILDDIR} && libtoolize && aclocal && autoconf && automake --add-missing

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
