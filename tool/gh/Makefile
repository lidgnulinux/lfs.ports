COMMENT = CLI for dealing with GitHub
VERSION = 2.99.0
REVISION = 0
CATEGORIES = tool
PKGNAME = gh
HOMEPAGE = https://cli.github.com
ARCHIVE = github-cli-${VERSION}.tar.gz
LINK = https://github.com/cli/cli/archive/v${VERSION}/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = cli-${VERSION}
MAKEOPT = GH_VERSION="v${VERSION}" bin/gh manpages completions
MKINST = no

prepare:

post_build:
	mkdir -v -p "package/usr/bin"
	install -Dm755 ${BUILDDIR}/bin/gh package/usr/bin/gh
	cp -r ${BUILDDIR}/share package/usr/

post-install:

include /usr/share/mk/lfs.port.mk
