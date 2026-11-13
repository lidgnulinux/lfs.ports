COMMENT = GLib bindings for D-Bus (deprecated)
VERSION = 0.116
REVISION = 0
CATEGORIES = libs
PKGNAME = dbus_glib
HOMEPAGE = https://www.freedesktop.org/wiki/Software/dbus/
SRCCD = archive
ARCHIVE = dbus-glib-${VERSION}.tar.gz
LINK = https://dbus.freedesktop.org/releases/dbus-glib/${ARCHIVE}
BUILD = make
BUILDDIR = dbus-glib-${VERSION} 
AUTO_CONF = (cd ${BUILDDIR}; ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--localstatedir=/var \
	--enable-static=no \
	--enable-bash-completion=no)
MAKEOPT = 

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
