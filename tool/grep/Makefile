COMMENT = Searches input files for lines containing a match to a specified pattern
VERSION = 3.12
REVISION = 0
CATEGORIES = tool
PKGNAME = grep
HOMEPAGE = https://www.gnu.org/software/grep/grep.html
ARCHIVE = grep-3.12.tar.xz
LINK = https://mirrors.kernel.org/gnu/grep/grep-3.12.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = grep-3.12
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--bindir=/bin \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-nls)
MAKEOPT =
LDFLAGS = -static
export LDFLAGS

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
