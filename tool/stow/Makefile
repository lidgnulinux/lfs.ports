COMMENT = Manage installation of multiple softwares in the same directory tree
VERSION = 2.4.1
REVISION = 0
CATEGORIES = tool
PKGNAME = stow
HOMEPAGE = https://www.gnu.org/software/stow/
ARCHIVE = stow-2.4.1.tar.bz2
LINK = https://ftp.gnu.org/gnu/stow/stow-2.4.1.tar.bz2
SRCCD = archive
BUILD = make
BUILDDIR = stow-2.4.1
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--mandir=/usr/share/man \
	--infodir=/usr/share/info \
	--with-pmdir=/usr/lib/perl5/vendor_perl)
MAKEOPT =

prepare:

post_build:
	rm -v package/usr/share/doc/stow/version.texi

post-install:

include /usr/share/mk/lfs.port.mk
