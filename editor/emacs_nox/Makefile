COMMENT = Extensible, customizable, self-documenting real-time display editor (common files)
VERSION = 30.2
REVISION = 0
CATEGORIES = editor
PKGNAME = emacs_nox
HOMEPAGE = https://www.gnu.org/software/emacs/emacs.html
ARCHIVE = emacs-30.2.tar.xz
LINK = https://ftp.gnu.org/gnu/emacs/emacs-30.2.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = emacs-30.2
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--with-gameuser=:games \
	--with-harfbuzz \
	--libdir=/usr/lib \
	--without-sound \
	--without-x \
	--without-file-notification \
	--with-native-compilation=no \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done
	cd ${BUILDDIR} && ./autogen.sh
	rm ${BUILDDIR}/etc/emacs.service

post_build:
	rm -rf package/usr/share/info

post-install:

include /usr/share/mk/lfs.port.mk
