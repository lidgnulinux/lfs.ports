COMMENT = The internationalization tool collection
VERSION = 0.51.0
REVISION = 0
CATEGORIES = tool
PKGNAME = intltool
HOMEPAGE = https://www.freedesktop.org/wiki/Software/intltool
ARCHIVE = intltool-0.51.0.tar.gz
LINK = https://launchpad.net/intltool/trunk/0.51.0/+download/intltool-0.51.0.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = intltool-0.51.0
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/patch/intltool-0.51.0-perl-5.26.patch
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/patch/intltool-merge-Create-cache-file-atomically.patch
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/patch/intltool_distcheck-fix.patch
	patch -p1 -d ${BUILDDIR} -i $(CURDIR)/patch/intltool-fixrace.patch

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
