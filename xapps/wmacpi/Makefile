COMMENT = A battery monitor dockapp for ACPI based systems 
VERSION = 2.4
REVISION = 0
CATEGORIES = xapps
PKGNAME = wmacpi
HOMEPAGE = https://www.dockapps.net/wmacpi
ARCHIVE = wmacpi-2.4.tar.gz
LINK = https://www.dockapps.net/download/wmacpi-2.4.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = wmacpi-2.4
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
