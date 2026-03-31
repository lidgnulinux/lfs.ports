COMMENT = Low-level core library that forms the basis for projects such as GTK and GNOME
VERSION = 2.88.0
GI_VERSION = 1.86.0
REVISION = 0
CATEGORIES = libs
PKGNAME = glib2
HOMEPAGE = https://wiki.gnome.org/Projects/GLib
GLIB_ARCHIVE = glib-2.88.0.tar.xz
GOBJECT_ARCHIVE = gobject-introspection-1.86.0.tar.xz
GLIB_LINK = https://download.gnome.org/sources/glib/2.88/glib-2.88.0.tar.xz
GOBJECT_LINK = https://download.gnome.org/sources/gobject-introspection/1.86/gobject-introspection-1.86.0.tar.xz
SRCCD = archive
BUILD = custom
BUILDDIR = glib-2.88.0
CFLAGS = -ffat-lto-objects -O2
CXXFLAGS = -O2
CPPFLAGS = -O2
_PREFIX = $(PWD)/boostrap-glib
export CFLAGS CXXFLAGS _PREFIX

prepare:
	wget -c ${GOBJECT_LINK} 
	wget -c ${GLIB_LINK} 

glib-no-introspection:
	tar -xf ${GLIB_ARCHIVE} 
	meson setup \
		--default-library=shared \
		--prefix="${_PREFIX}" \
		-Dlibdir=lib \
		-Dman-pages=disabled \
		-Dlibmount=disabled \
		-Dtests=false \
		-Dintrospection=disabled \
		-Dnls=disabled \
		build ${BUILDDIR}

	meson compile -C build
	meson install --no-rebuild -C build

gobject-introspection:
	tar -xf ${GOBJECT_ARCHIVE} 
	meson setup \
		--pkg-config-path="${_PREFIX}"/lib/pkgconfig \
		--prefix="${_PREFIX}" \
		-Dlibdir=lib \
		-Dbuild_introspection_data=false \
		-Dcairo=disabled \
		-Ddoctool=disabled \
		gobject-introspection-${GI_VERSION} \
		gioutput

	meson compile -C gioutput
	meson install --no-rebuild -C gioutput

glib-with-introspection:
	PATH="${_PREFIX}/bin:${PATH}" LD_LIBRARY_PATH="${_PREFIX}/lib" \
		meson --reconfigure \
		--prefix=/usr \
		--libdir=/usr/lib \
		--pkg-config-path="${_PREFIX}"/lib/pkgconfig \
		--default-library=both \
		-Dman-pages=enabled \
		-Dlibmount=enabled \
		-Dtests="false" \
		-Dintrospection=enabled \
		-Dnls=enabled \
		build ${BUILDDIR}

	PATH="${_PREFIX}/bin:${PATH}" LD_LIBRARY_PATH="${_PREFIX}/lib" meson \
		compile -C build
	DESTDIR="../pkg" meson install --no-rebuild -C build 

custom-build: glib-no-introspection gobject-introspection glib-with-introspection 

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
