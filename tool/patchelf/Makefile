COMMENT = Small utility to modify the dynamic linker and RPATH of ELF executables
VERSION = 0.19.1
REVISION = 0
CATEGORIES = tool
PKGNAME = patchelf
HOMEPAGE = https://nixos.org/patchelf.html
ARCHIVE = patchelf-${VERSION}.tar.gz
LINK = https://github.com/NixOS/patchelf/releases/download/${VERSION}/patchelf-${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = patchelf-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
