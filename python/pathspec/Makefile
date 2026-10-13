COMMENT = Utility library for gitignore style pattern matching of file paths
VERSION = 1.0.3
REVISION = 0
CATEGORIES = python
PKGNAME = pathspec
HOMEPAGE = https://github.com/cpburnz/python-path-specification
ARCHIVE = pathspec-1.0.3.tar.gz
LINK = https://mirrors.kernel.org/slackware/slackware-current/source/l/python-pathspec/pathspec-1.0.3.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = pathspec-1.0.3

prepare:

custom-build:
	cd ${BUILDDIR} && python3 setup.py install --root="$(CURDIR)/pkg"

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
