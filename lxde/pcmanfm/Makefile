COMMENT = Extremely fast and lightweight file manager
VERSION = 1.3.2
REVISION = 0
CATEGORIES = xapps
PKGNAME = pcmanfm
HOMEPAGE = https://github.com/lxde/pcmanfm
ARCHIVE = pcmanfm-1.3.2.tar.xz
LINK = https://downloads.sourceforge.net/pcmanfm/pcmanfm-1.3.2.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = pcmanfm-1.3.2
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--with-gtk=3 \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	patch -p1 -d ${BUILDDIR} -i $(PWD)/gcc14-werror-incompatible-pointer-types.patch

post_build:
	sed -i 's|x-directory/normal|inode/directory|' \
		package/usr/share/applications/pcmanfm.desktop

post-install:

include /usr/share/mk/lfs.port.mk
