COMMENT = Ca-certificates generator
VERSION = 1.16.1
REVISION = 0
CATEGORIES = net
PKGNAME = makeca
HOMEPAGE = https://github.com/lfs-book/make-ca
ARCHIVE = make-ca-1.16.1.tar.gz
LINK = https://github.com/lfs-book/make-ca/archive/v1.16.1/make-ca-1.16.1.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = make-ca-1.16.1
MAKEOPT =

prepare:

post_build:
	install -vdm755 package/etc/ssl/local

post-install:

include /usr/share/mk/lfs.port.mk
