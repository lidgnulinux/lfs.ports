COMMENT = Operating system and container binary deployment and upgrades
VERSION = 1.18.4
REVISION = 0
CATEGORIES = tool
PKGNAME = flatpak
HOMEPAGE = https://github.com/flatpak/flatpak
ARCHIVE = flatpak-${VERSION}.tar.xz
LINK = https://github.com/flatpak/flatpak/releases/download/${VERSION}/flatpak-${VERSION}.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = flatpak-${VERSION}
BUILD_OPTION = -Ddbus_config_dir=/usr/share/dbus-1/system.d \
	-Dauto_sideloading=false \
	-Dgdm_env_file=false \
	-Dgtkdoc=enabled \
	-Dman=enabled \
	-Dsystem_bubblewrap=bwrap \
	-Dtests=false \
	-Dsystem_dbus_proxy=xdg-dbus-proxy \
	-Dsystem_helper_user=flatpak \
	-Dsystem_fusermount=fusermount3 \
	-Dselinux_module=disabled \
	-Dmalcontent=disabled

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
