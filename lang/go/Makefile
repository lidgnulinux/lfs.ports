COMMENT = Go programming language compiler
VERSION = 1.26.5
REVISION = 0
CATEGORIES = lang
PKGNAME = go
HOMEPAGE = https://go.dev/
ARCHIVE = go1.26.5.src.tar.gz
LINK = https://go.dev/dl/go1.26.5.src.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = go
export GOARCH = amd64
export GO_LDFLAGS = -buildmode=pie

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(CURDIR)/$$i; done

custom-build:
	cd ${BUILDDIR}/src; GOOS="linux" \
		GOPATH="$(CURDIR)" \
		GOROOT="go" \
		GOBIN="${GOROOT}"/bin \
		GOROOT_FINAL=/usr/lib/go \
		./make.bash -v

post_build:
	mkdir -p pkg/usr/bin pkg/usr/lib/go/bin pkg/usr/share/doc/go
	for i in go gofmt; do install -Dm755 ${BUILDDIR}/bin/$$i \
		pkg/usr/lib/go/bin/$$i; done
	for i in go gfmt; do ln -s /usr/lib/go/bin/$$i \
		pkg/usr/bin/$$i; done

	cp -a ${BUILDDIR}/{misc,pkg,src,lib} pkg/usr/lib/go/
	cp -r ${BUILDDIR}/doc pkg/usr/share/doc/go

	rm -rf pkg/usr/lib/go/pkg/obj
	rm -rf pkg/usr/lib/go/pkg/bootstrap
	rm -f  pkg/usr/lib/go/pkg/tool/*/api

	install -Dm644 ${BUILDDIR}/go.env pkg/usr/lib/go/go.env
	install -Dm644 ${BUILDDIR}/VERSION pkg/usr/lib/go/VERSION

	find pkg/usr/lib/go/src \( -type f -a -name "*_test.go" \) \
		-exec rm -rf \{\} \+
	find pkg/usr/lib/go/src \( -type d -a -name "testdata" \) \
		-exec rm -rf \{\} \+

post-install:

include /usr/share/mk/lfs.port.mk
