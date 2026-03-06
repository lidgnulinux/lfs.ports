COMMENT = Middleware to access a smart card using SCard API (PC/SC)
VERSION = 2.4.0
REVISION = 0
CATEGORIES = sys
PKGNAME = pcsc_lite
HOMEPAGE = https://pcsclite.apdu.fr/
ARCHIVE = pcsc-lite-2.4.0.tar.xz
LINK = https://pcsclite.apdu.fr/files/pcsc-lite-2.4.0.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = pcsc-lite-2.4.0
BUILD_OPTION = -Ddefault_library=both \
	-Dlibusb=false \
	-Dlibudev=true \
	-Dpolkit=false \
	-Dlibsystemd=false

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
