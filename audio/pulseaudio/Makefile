COMMENT = featureful, general-purpose sound server
VERSION = 17.0
REVISION = 0
CATEGORIES = audio
PKGNAME = pulseaudio
HOMEPAGE = https://www.freedesktop.org/wiki/Software/PulseAudio/
ARCHIVE = pulseaudio-17.0.tar.xz
LINK = https://freedesktop.org/software/pulseaudio/releases/pulseaudio-17.0.tar.xz
SRCCD = archive
BUILD = meson
BUILDDIR = pulseaudio-17.0
BUILD_OPTION = -Dman=true \
	-Dtests="false" \
	-Dsystem_user=pulse \
	-Dsystem_group=pulse \
	-Ddatabase=tdb \
	-Dalsa=enabled \
	-Dasyncns=enabled \
	-Davahi=disabled \
	-Dbluez5=disabled \
	-Ddbus=enabled \
	-Dfftw=enabled \
	-Dglib=enabled \
	-Dgsettings=enabled \
	-Dgtk=disabled \
	-Dhal-compat=false \
	-Dipv6=true \
	-Djack=enabled \
	-Dlirc=disabled \
	-Dopenssl=disabled \
	-Dorc=enabled \
	-Dsamplerate=disabled \
	-Dsoxr=enabled \
	-Dspeex=enabled \
	-Dsystemd=enabled \
	-Dudev=enabled \
	-Dx11=enabled \
	-Dudevrulesdir=/lib/udev/rules.d/ \
	-Dgstreamer=enabled \
	-Ddoxygen=false \
	-Dstream-restore-clear-old-devices=true

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
