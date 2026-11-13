COMMENT = Easily manage large numbers of patches
VERSION = 0.69
REVISION = 0
CATEGORIES = devel
PKGNAME = quilt
HOMEPAGE = https://savannah.nongnu.org/projects/quilt
ARCHIVE = quilt-0.69.tar.gz
LINK = https://download-mirror.savannah.gnu.org/releases/quilt/quilt-0.69.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = quilt-0.69
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT = all BUILD_ROOT="$(CURDIR)/package"

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
