COMMENT = Linux Kernel
VERSION = 6.19.9
_VERSION = 6.19.9
REVISION = 1
CATEGORIES = kernel
PKGNAME = linux
HOMEPAGE = https://kernel.org
ARCHIVE = linux-6.19.9.tar.xz
LINK = https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.9.tar.xz
SRCCD = archive
BUILDDIR = linux-${VERSION}
PACKAGE = ${PKGNAME}-${VERSION}-${REVISION}@${CATEGORIES}

prepare:
	make -C ${BUILDDIR} mrproper
	make -C ${BUILDDIR} oldconfig

configure:
	make -C ${BUILDDIR} menuconfig

bzImage:
	make -C ${BUILDDIR} -j4 ARCH=x86_64 bzImage 

modules:
	make -C ${BUILDDIR} -j4 ARCH=x86_64 modules	

install-kernel:
	make -C ${BUILDDIR} -j4 ARCH=x86_64 modules_install
	cp -iv ${BUILDDIR}/arch/x86/boot/bzImage /boot/vmlinuz-${_VERSION}-lfs-12.4
	cp -iv ${BUILDDIR}/System.map /boot/System.map-${_VERSION}
	cp -iv ${BUILDDIR}/.config /boot/config-${_VERSION} 
	
pack:
	mkdir -p package/boot
	make -C ${BUILDDIR} -j4 ARCH=x86_64 INSTALL_MOD_PATH="../package" modules_install
	cp -iv ${BUILDDIR}/arch/x86/boot/bzImage package/boot/vmlinuz-${_VERSION}-lfs-12.4
	cp -iv ${BUILDDIR}/System.map package/boot/System.map-${_VERSION}
	cp -iv ${BUILDDIR}/.config package/boot/config-${_VERSION} 
	install -Dm644 $(PWD)/Makefile $(PWD)/package/var/lib/mk/${PACKAGE}.mk
	tar -C package -cvf ${PACKAGE}.tar.gz .

post-install:

include /usr/share/mk/lfs.port.mk
