COMMENT = The ACPI Daemon (acpid) With Netlink Support
VERSION = 2.0.34
REVISION = 0
CATEGORIES = sys
PKGNAME = acpid
HOMEPAGE = https://sourceforge.net/projects/acpid2/
ARCHIVE = acpid-2.0.34.tar.xz
LINK = https://downloads.sourceforge.net/sourceforge/acpid2/acpid-2.0.34.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = acpid-2.0.34
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/ \
	--sysconfdir=/etc \
	--exec-prefix=/usr \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	patch -d ${BUILDDIR} -i $(PWD)/lfs64.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
