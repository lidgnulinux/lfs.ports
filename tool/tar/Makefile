COMMENT = Utility used to store, backup, and transport files
VERSION = 1.35
REVISION = 1
CATEGORIES = tool
PKGNAME = tar
HOMEPAGE = https://www.gnu.org/software/tar/
ARCHIVE = tar-1.35.tar.xz
LINK = https://ftp.gnu.org/gnu/tar/tar-1.35.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = tar-1.35
AUTO_CONF = (cd ${BUILDDIR} && \
	./configure \
	gl_cv_func_gettimeofday_clobber=no \
	gl_cv_func_tzset_clobber=no \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--without-selinux)

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
