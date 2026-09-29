COMMENT = The GNU Linux-libre kernel
VERSION = 7.2
REVISION = 0
CATEGORIES = kernel
PKGNAME = linux_libre
HOMEPAGE = https://www.gnu.org/software/linux-libre
ARCHIVE = linux-libre-${VERSION}-gnu.tar.xz
LINK = http://linux-libre.fsfla.org/pub/linux-libre/releases/LATEST-${VERSION}.0/${ARCHIVE}
SRCCD = archive
BUILD = make 
BUILDDIR = linux-${VERSION}
MAKEOPT =
PACKAGE = ${PKGNAME}-${VERSION}-${REVISION}@${CATEGORIES}

prepare:
	make -C ${BUILDDIR} mrproper
	cp -r config ${BUILDDIR}/.config
	make -C ${BUILDDIR} olddefconfig

configure:
	make -C ${BUILDDIR} menuconfig

bzImage:
	make -C ${BUILDDIR} -j4 ARCH=x86_64 bzImage 

modules:
	make -C ${BUILDDIR} -j4 ARCH=x86_64 modules	

pack:
	mkdir -p package/boot
	make -C ${BUILDDIR} -j4 ARCH=x86_64 INSTALL_MOD_PATH="../package" modules_install
	cp -iv ${BUILDDIR}/arch/x86/boot/bzImage package/boot/vmlinuz-${VERSION}-lfs
	cp -iv ${BUILDDIR}/System.map package/boot/System.map-${VERSION}
	cp -iv ${BUILDDIR}/.config package/boot/config-${VERSION} 
	install -Dm644 $(PWD)/Makefile $(PWD)/package/var/lib/mk/${PACKAGE}.mk
	tar -C package -cvf ${PACKAGE}.tar.gz .

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
