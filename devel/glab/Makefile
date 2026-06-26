COMMENT = GLab is an open source GitLab CLI tool that brings GitLab to your command line.
VERSION = 1.105.0
REVISION = 0
CATEGORIES = devel
PKGNAME = glab
HOMEPAGE = https://gitlab.com/gitlab-org/cli
ARCHIVE = glab_1.105.0_linux_amd64.tar.gz
LINK = https://gitlab.com/gitlab-org/cli/-/releases/v1.105.0/downloads/glab_1.105.0_linux_amd64.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = $(PWD)

prepare:
	mkdir -p pkg/usr/bin
	mkdir -p pkg/usr/share/doc/glab

custom-build:
	install -Dm755 ${BUILDDIR}/bin/glab pkg/usr/bin/glab
	for i in README.md LICENSE CHANGELOG.md; do \
		install -Dm644 ${BUILDDIR}/$$i pkg/usr/share/doc/glab/$$i; done

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
