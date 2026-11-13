COMMENT = Tools to manage Bluetooth devices and networks
VERSION = 0_git20201025
REVISION = 0
CATEGORIES = tool
PKGNAME = bluez_tools
HOMEPAGE = https://github.com/khvzak/bluez-tools
_REV = f65321736475429316f07ee94ec0deac8e46ec4a
ARCHIVE = ${_REV}.tar.gz
LINK = https://github.com/khvzak/bluez-tools/archive/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = bluez-tools-${_REV}
AUTO_CONF = (cd ${BUILDDIR} && ./autogen.sh --prefix=/usr)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
