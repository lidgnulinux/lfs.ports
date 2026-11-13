COMMENT = Distributed version control system
VERSION = 2.55.0
REVISION = 1
CATEGORIES = devel
PKGNAME = git
HOMEPAGE = https://www.git-scm.com/
ARCHIVE = git-2.55.0.tar.xz
LINK = https://www.kernel.org/pub/software/scm/git/git-2.55.0.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = git-2.55.0
BUILD_OPTION = -Dzlib_backend=zlib-ng \
	-Dpcre2=enabled -Drust=disabled 

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
