COMMENT = A SSH (version 1) library.
VERSION = 0.12.2
REVISION = 0
CATEGORIES = libs
PKGNAME = libssh
HOMEPAGE = https://www.libssh.org
ARCHIVE = libssh-${VERSION}.tar.xz
LINK = https://www.libssh.org/files/0.12/libssh-${VERSION}.tar.xz
SRCCD = archive
BUILD = cmake
BUILDDIR = libssh-${VERSION}
BUILD_OPTION = -DCMAKE_BUILD_TYPE=Release \
	-DWITH_GSSAPI=OFF -DUNIT_TESTING=OFF \
	-DWITH_GCRYPT=1 -DWITH_PCAP=1 \
	-DWITH_SFTP=1 -DWITH_SERVER=0

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
