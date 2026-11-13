COMMENT = Utility to apply diffs to files
VERSION = 2.8
REVISION = 0
CATEGORIES = tool
PKGNAME = patch
HOMEPAGE = https://www.gnu.org/software/patch/patch.html
ARCHIVE = patch-2.8.tar.xz
LINK = https://ftp.gnu.org/gnu/patch/patch-2.8.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = patch-2.8
AUTO_CONF = (cd ${BUILDDIR} && \
	gl_cv_func_gettimeofday_clobber=no \
	gl_cv_func_tzset_clobber=no \
	./configure --prefix=/usr \
	--sysconfdir=/etc \
	--mandir=/usr/share/man \
	--localstatedir=/var)

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
