COMMENT = Notification libraries used by programs.
VERSION = 0.12
REVISION = 0
CATEGORIES = libs
PKGNAME = startup_notification
HOMEPAGE = https://www.freedesktop.org/software/startup-notification
ARCHIVE = startup-notification-0.12.tar.gz
LINK = https://www.freedesktop.org/software/startup-notification/releases/startup-notification-0.12.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = startup-notification-0.12
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--enable-shared=yes \
	--with-x)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

custom-build:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
