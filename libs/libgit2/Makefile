COMMENT = linkable library for Git
VERSION = 1.9.2
REVISION = 0
CATEGORIES = libs
PKGNAME = libgit2
HOMEPAGE = https://libgit2.org/
ARCHIVE = v1.9.2.tar.gz
LINK = https://github.com/libgit2/libgit2/archive/v1.9.2.tar.gz
SRCCD = archive
BUILD = cmake
BUILDDIR = libgit2-1.9.2
BUILD_OPTION = -DCMAKE_BUILD_TYPE=None \
	-DUSE_HTTPS=OpenSSL \
	-DREGEX_BACKEND=pcre2 \
	-DUSE_BUNDLED_ZLIB=OFF \
	-DBUILD_TESTS=OFF \
	-DUSE_SSH=ON

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
