COMMENT = Efficient, principled regular expression library
VERSION = 2025.11.05
REVISION = 0
CATEGORIES = libs
PKGNAME = re2
HOMEPAGE = https://github.com/google/re2
ARCHIVE = 2025-11-05.tar.gz
LINK = https://github.com/google/re2/archive/2025-11-05.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = re2-2025-11-05
MAKEOPT = prefix=/usr libdir=/usr/lib

prepare:
	for i in patch/*; do patch -p0 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
