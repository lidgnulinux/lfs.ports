COMMENT = Protocol Buffers implementation in C
VERSION = 1.5.2
REVISION = 2
CATEGORIES = libs
PKGNAME = protobuf_c
HOMEPAGE = https://github.com/protobuf-c/protobuf-c
ARCHIVE = protobuf-c-1.5.2.tar.gz
LINK = https://github.com/protobuf-c/protobuf-c/releases/download/v1.5.2/protobuf-c-1.5.2.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = protobuf-c-1.5.2
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
