COMMENT = all-in-one Linux command line.
VERSION = 0.8.13.c7a18b7b3
_REV = 7a18b7b3087665f00188162b444b2ca4abea48dc
REVISION = 0
CATEGORIES = tool
PKGNAME = toybox
HOMEPAGE = http://landley.net/toybox/
ARCHIVE = 7a18b7b3087665f00188162b444b2ca4abea48dc.tar.gz
LINK = https://github.com/landley/toybox/archive/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = toybox-${_REV}
MAKEOPT = LDFLAGS="--static"

prepare:
	# remove install target and replace it with our own.
	sed -i '76d;77d;78d' ${BUILDDIR}/Makefile
	echo -e "\ninclude ../Makefile" >> ${BUILDDIR}/Makefile

	$(MAKE) -C ${BUILDDIR} defconfig

install:
	install -D -m755 $(PWD)/${BUILDDIR}/toybox $(PWD)/package/usr/bin/toybox

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
