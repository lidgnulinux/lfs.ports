COMMENT = Wayland Kiosk
VERSION = 0.2.1
REVISION = 0
CATEGORIES = wayland
PKGNAME = cage
HOMEPAGE = https://www.hjdskes.nl/projects/cage/
ARCHIVE = v0.2.1.tar.gz
LINK = https://github.com/cage-kiosk/cage/archive/refs/tags/v0.2.1.tar.gz
SRCCD = archive
BUILD = meson
BUILDDIR = cage-0.2.1
BUILD_OPTION =

prepare:

post_build:
	install -Dm755 cage-run -t build/package/usr/bin/ 

post-install:

include /usr/share/mk/lfs.port.mk
