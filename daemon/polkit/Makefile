COMMENT = Application development toolkit for controlling system-wide privileges
VERSION = 126
REVISION = 0
CATEGORIES = daemon
PKGNAME = polkit
HOMEPAGE = https://github.com/polkit-org/polkit
ARCHIVE = polkit-126.tar.gz
LINK = https://github.com/polkit-org/polkit/archive/refs/tags/126/polkit-126.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = polkit-126
BUILD_OPTION = -Dtests=false \
	-Dman=false \
	-Dsystemdsystemunitdir=/trash \
	-Dpam_prefix=/etc/pam.d \
	-Dsession_tracking=elogind

prepare:

post_build:
	rm -rf build/package/trash
	@install -m644 alpine-polkit.pam build/package/etc/pam.d/polkit-1
	chown -R polkitd:polkitd build/package/etc/polkit-1/rules.d build/package/usr/share/polkit-1/rules.d
	chmod -R 700 build/package/etc/polkit-1/rules.d build/package/usr/share/polkit-1/rules.d
	chmod 4755 build/package/usr/lib/polkit-1/polkit-agent-helper-1
	chmod 4755 build/package/usr/bin/pkexec

post-install:

include /usr/share/mk/lfs.port.mk
