COMMENT = Off The Record Messaging, an encryption library for secure IM conversations
VERSION = 4.1.1
REVISION = 0
CATEGORIES = libs
PKGNAME = libotr
HOMEPAGE = http://otr.cypherpunks.ca/
ARCHIVE = libotr-4.1.1.tar.gz
LINK = https://www.cypherpunks.ca/otr/libotr-4.1.1.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libotr-4.1.1
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/socklen-t.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
