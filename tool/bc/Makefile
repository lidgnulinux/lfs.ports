COMMENT = POSIX bc with GNU extensions
VERSION = 7.1.0
REVISION = 0
CATEGORIES = tool
PKGNAME = bc
HOMEPAGE = https://github.com/gavinhoward/bc
ARCHIVE = bc-7.1.0.tar.xz
LINK = https://github.com/gavinhoward/bc/releases/download/7.1.0/bc-7.1.0.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = bc-7.1.0
AUTO_CONF = (cd ${BUILDDIR} && PREFIX=/usr \
	DESTDIR="$(CURDIR)/package" \
	./configure -GN)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
