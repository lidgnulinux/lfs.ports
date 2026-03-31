COMMENT = A dockapp to monitor status of up to 2 batteries and cpu temp
VERSION = 0.1.7
REVISION = 0
CATEGORIES = xapps
PKGNAME = wmbatteries
HOMEPAGE = https://www.dockapps.net/wmbatteries
ARCHIVE = 0.1.7.tar.gz
LINK = https://github.com/tarjanm-movidius/wmbatteries/archive/refs/tags/0.1.7.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = wmbatteries-0.1.7
MAKEOPT =

prepare:
	cd ${BUILDDIR} && ./autogen.sh && ./configure --prefix=/usr

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
