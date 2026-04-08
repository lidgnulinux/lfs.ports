COMMENT = Operating system and container binary deployment and upgrades
VERSION = 1.16.4
REVISION = 0
CATEGORIES = tool
PKGNAME = flatpak
HOMEPAGE = https://github.com/flatpak/flatpak
ARCHIVE = flatpak-1.16.4.tar.xz
LINK = https://github.com/flatpak/flatpak/releases/download/1.16.4/flatpak-1.16.4.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = flatpak-1.16.4
BUILD_OPTION = -Ddbus_config_dir=/usr/share/dbus-1/system.d \
	-Dauto_sideloading=false \
	-Ddocbook_docs=disabled \
	-Dgdm_env_file=false \
	-Dgtkdoc=disabled \
	-Dman=disabled \
	-Dsystem_bubblewrap=bwrap \
	-Dtests=false \
	-Dsystem_dbus_proxy=xdg-dbus-proxy \
	-Dsystem_helper_user=flatpak \
	-Dsystem_fusermount=fusermount3 \
	-Dselinux_module=disabled

prepare:

post_build:
	rm -rf build/package/usr/lib/systemd
	rm -rf build/package/usr/lib/sysusers.d
	rm -rf build/package/usr/lib/tmpfiles.d

post-install:

include /usr/share/mk/lfs.port.mk
