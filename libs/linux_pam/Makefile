COMMENT = Linux PAM (Pluggable Authentication Modules for Linux)
VERSION = 1.7.3
REVISION = 1
CATEGORIES = libs
PKGNAME = linux_pam
HOMEPAGE = https://www.kernel.org/pub/linux/libs/pam
ARCHIVE = Linux-PAM-${VERSION}.tar.xz
LINK = https://github.com/linux-pam/linux-pam/releases/download/v${VERSION}/Linux-PAM-${VERSION}.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = Linux-PAM-${VERSION}
BUILD_OPTION = -Dexamples=false \
	-Dhtmldir=/usr/share/doc/Linux-PAM \
	-Ddocdir=/usr/share/man

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
