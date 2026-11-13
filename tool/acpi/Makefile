COMMENT = ACPI client for battery, power, and thermal readings
VERSION = 1.8
REVISION = 0
CATEGORIES = tool
PKGNAME = acpi
HOMEPAGE = https://sourceforge.net/projects/acpiclient/files/acpiclient/
ARCHIVE = acpi-${VERSION}.tar.gz
LINK = https://downloads.sourceforge.net/acpiclient/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = acpi-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr --sysconfdir=/etc --mandir=/usr/share/man)
GRAFT = no
STRIP = no

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
