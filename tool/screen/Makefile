COMMENT = Window manager that multiplexes a physical terminal
VERSION = 5.0.1
REVISION = 0
CATEGORIES = tool
PKGNAME = screen
HOMEPAGE = https://www.gnu.org/software/screen/
ARCHIVE = screen-5.0.1.tar.gz
LINK = https://ftp.gnu.org/gnu/screen/screen-5.0.1.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = screen-5.0.1
BUILD_OPTION =
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--with-system_screenrc=/etc/screenrc \
	--mandir=/usr/share/man \
	--infodir=/usr/share/info \
	--localstatedir=/var \
	--enable-telnet \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	cd ${BUILDDIR} && ./autogen.sh

post_build:
	# use this if you do packaging using root instead of ordinary user.
	# find package -type f -perm -u+s -print0 | xargs -0 chmod -c -s
	
	install -Dm644 ${BUILDDIR}/etc/etcscreenrc package/etc/screenrc
	install -Dm644 ${BUILDDIR}/etc/screenrc package/etc/skel/.screenrc

post-install:

include /usr/share/mk/lfs.port.mk
