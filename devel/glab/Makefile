COMMENT = Open source GitLab CLI tool written in Go
VERSION = 1.111.0
REVISION = 0
CATEGORIES = tool
PKGNAME = glab
HOMEPAGE = https://gitlab.com/gitlab-org/cli
ARCHIVE = cli-v${VERSION}.tar.gz
LINK = https://gitlab.com/gitlab-org/cli/-/archive/v${VERSION}/cli-v${VERSION}.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = cli-v${VERSION}
DATE = $(shell date -u "+%Y-%m-%d")
OPTIONS = -X main.debugMode=false \
	-X main.buildDate=${DATE} \
	-X main.version=${VERSION}

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

custom-build:
	cd ${BUILDDIR}; go build -ldflags "${OPTIONS}" \
		-o build/bin/glab \
		./cmd/glab/main.go

post_build:
	install -Dm755 ${BUILDDIR}/build/bin/glab -t pkg/usr/bin/

post-install:

include /usr/share/mk/lfs.port.mk
