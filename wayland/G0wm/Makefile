COMMENT = The Wayland compositor that wants to be a desktop environment
VERSION = 1.3.1.c10044e34
REVISION = 0
_SHA = 10044e34da7c952c9a88c8550a32f32f725783f7
CATEGORIES = wayland
PKGNAME = G0wm
HOMEPAGE = https://github.com/frapank/G0wm
ARCHIVE = ${_SHA}.tar.gz 
LINK =  ${HOMEPAGE}/archive/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = G0wm-${_SHA}
AUTO_CONF = (cd ${BUILDDIR} && ./configure --prefix=/usr)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
