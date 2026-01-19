COMMENT = A collection of USB tools to query connected USB devices
VERSION = 019
REVISION = 0
CATEGORIES = tool
PKGNAME = usbutils
HOMEPAGE = https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usbutils.git/
ARCHIVE = usbutils-019.tar.xz
LINK = https://www.kernel.org/pub/linux/utils/usb/usbutils/usbutils-019.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = usbutils-019
BUILD_OPTION =

prepare:

post_build:
	install -vDm 755 build/usbreset -t build/package/usr/bin
	install -vDm 644 ${BUILDDIR}/{NEWS,README.md} -t \
		build/package/usr/share/doc/${PKGNAME}
	install -vDm 644 ${BUILDDIR}/LICENSES/*.txt -t \
		build/package/usr/share/licenses/${PKGNAME}

post-install:

include /usr/share/mk/lfs.port.mk
