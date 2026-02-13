COMMENT = Extremely fast non-cryptographic hash algorithm
VERSION = 0.8.3
REVISION = 0
CATEGORIES = libs
PKGNAME = xxhash
HOMEPAGE = https://cyan4973.github.io/xxHash/
ARCHIVE = v0.8.3.tar.gz
LINK = https://github.com/Cyan4973/xxHash/archive/v0.8.3.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = xxHash-0.8.3
MAKEOPT = DISPATCH=1 LIBXXH_DISPATCH=1
export CFLAGS="-DXXH_FORCE_MEMORY_ACCESS=1 -O2"

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
