COMMENT = Provides a standard for creating app stores across distributions
VERSION = 1.2.1
REVISION = 0
CATEGORIES = libs
PKGNAME = appstream
HOMEPAGE = https://distributions.freedesktop.org/wiki/AppStream
ARCHIVE = AppStream-${VERSION}.tar.xz
LINK = https://www.freedesktop.org/software/appstream/releases/AppStream-${VERSION}.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = AppStream-${VERSION}
BUILD_OPTION = -Dqt=false \
	-Dsystemd=true \
	-Ddocs=false \
	-Dman=false \
	-Dapidocs=false \
	-Dinstall-docs=false \
	-Dstemming=false \
	-Dvapi=false \
	-Dapt-support=false \
	-Dgir=true \
	-Dblake3-support=false \
	-Dbash-completion=false \
	-Dcompose=false

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
