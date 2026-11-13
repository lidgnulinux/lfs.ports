COMMENT = The systemd System and Service Manager
VERSION = 262.1
REVISION = 0
CATEGORIES = sys
PKGNAME = systemd
HOMEPAGE = https://github.com/systemd/systemd
SRCCD = archive
ARCHIVE = systemd-262.1.tar.gz
LINK = https://github.com/systemd/systemd/archive/v${VERSION}/${ARCHIVE}
BUILD = meson
BUILDDIR = systemd-262.1
BUILD_OPTION = --buildtype=release \
	-D default-dnssec=no \
	-D firstboot=false \
	-D install-tests=false \
	-D ldconfig=false \
	-D man=auto \
	-D sysusers=false \
	-D rpmmacrosdir=no \
	-D homed=disabled \
	-D mode=release \
	-D pam=enabled \
	-D pamconfdir=/etc/pam.d \
	-D dev-kvm-mode=0660 \
	-D nobody-group=nogroup \
	-D sysupdate=disabled \
	-D ukify=disabled \
	-D openssl=disabled \
	-D docdir=/usr/share/doc/systemd-262.1

prepare:
	sed -i -e 's/GROUP="render"/GROUP="video"/' \
		-e 's/GROUP="sgx", //' ${BUILDDIR}/rules.d/50-udev-default.rules.in

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
