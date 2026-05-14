COMMENT = Multi-purpose desktop calculator
VERSION = 5.10.0
REVISION = 0
CATEGORIES = tool
PKGNAME = libqalculate
HOMEPAGE = https://qalculate.github.io/
ARCHIVE = libqalculate-${VERSION}.tar.gz
LINK = https://github.com/Qalculate/libqalculate/releases/download/v${VERSION}/libqalculate-${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = libqalculate-5.10.0
AUTO_CONF = (cd ${BUILDDIR} && ./autogen.sh \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--build=x86_64-pc-linux-musl)
MAKEOPT =
export LDFLAGS = -Wl,-z,stack-size=2097152
export CXXFLAGS = -std=c++17 

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
