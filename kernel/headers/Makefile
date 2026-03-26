COMMENT = Linux Kernel Headers
VERSION = 6.19.9
_VERSION = 6.19.9
REVISION = 0
CATEGORIES = kernel
PKGNAME = linux_headers
HOMEPAGE = https://kernel.org
ARCHIVE = linux-6.19.9.tar.xz
LINK = https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.9.tar.xz
SRCCD = archive
BUILDDIR = linux-${VERSION}
BUILD = make
MAKEOPT = headers
MKINST = no

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:
	@mkdir -p package/usr/
	@cp -a ${BUILDDIR}/usr/include/ package/usr/include/
	@find package/usr/include/ ! -iname "*.h" -type f -exec rm -v {} \+
	rm -rf package/usr/include/drm

post-install:

include /usr/share/mk/lfs.port.mk
