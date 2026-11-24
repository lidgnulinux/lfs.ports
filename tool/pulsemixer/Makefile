COMMENT = CLI and curses mixer for PulseAudio
VERSION = 1.5.1
REVISION = 0
CATEGORIES = tool
PKGNAME = pulsemixer
HOMEPAGE = https://github.com/GeorgeFilipkin/pulsemixer
ARCHIVE = 1.5.1.tar.gz
LINK = https://github.com/GeorgeFilipkin/pulsemixer/archive/${ARCHIVE}
SRCCD = archive
BUILD = custom
BUILDDIR = pulsemixer-1.5.1

prepare:

custom-build:
	cd ${BUILDDIR}; gpep517 build-wheel --wheel-dir .dist \
		--output-fd 3 3>&1 >&2
	cd ${BUILDDIR}; python3 -m installer -d $(CURDIR)/pkg .dist/*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
