COMMENT = Bootloader with support for Linux, Multiboot and more
VERSION = 2.16
REVISION = 0
CATEGORIES = sys
PKGNAME = grub
HOMEPAGE = https://www.gnu.org/software/grub/
ARCHIVE = grub-grub-${VERSION}.tar.gz
LINK = https://gitlab.freedesktop.org/gnu-grub/grub/-/archive/grub-${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = grub-grub-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-nls --with-platform=pc \
	--infodir=/usr/share/info/grub \
	--disable-werror \
	--enable-grub-themes \
	--enable-grub-mkfont \
	--with-dejavufont=/usr/share/fonts/fonts/dejavu/DejaVuSans.ttf)
MAKEOPT =
GNU_LIB = https://git.savannah.gnu.org/git/gnulib.git

get_gnulib:
	git clone ${GNU_LIB} 

bootstrap:
	cd ${BUILDDIR}; ./bootstrap \
		--gnulib-srcdir=$(CURDIR)/gnulib \
		--skip-po

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
