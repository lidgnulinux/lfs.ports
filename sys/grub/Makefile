COMMENT = Bootloader with support for Linux, Multiboot and more
VERSION = 2.14
REVISION = 1
CATEGORIES = sys
PKGNAME = grub
HOMEPAGE = https://www.gnu.org/software/grub/
ARCHIVE = grub-${VERSION}.tar.xz
LINK = https://ftp.gnu.org/gnu/grub/grub-${VERSION}.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = grub-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	ax_cv_check_ldflags___Wl___image_base_0x400000=no \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-nls --with-platform=pc \
	--infodir=/usr/share/info/grub \
	--disable-werror \
	--enable-grub-themes \
	--enable-grub-mkfont \
	--with-dejavufont=/usr/share/fonts/fonts/dejavu/DejaVuSans.ttf \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	cd ${BUILDDIR} && PYTHON=python3 sh ./autogen.sh

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
