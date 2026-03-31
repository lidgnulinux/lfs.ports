COMMENT = simple packaging tool for simple packages (core)
VERSION = 3.12.0
REVISION = 0
CATEGORIES = python
PKGNAME = flitcore
HOMEPAGE = https://flit.readthedocs.io/
ARCHIVE = flit_core-3.12.0.tar.gz
LINK = https://mirrors.kernel.org/slackware/slackware-current/source/l/python-flit-core/flit_core-3.12.0.tar.gz
SRCCD = archive
BUILD = custom
BUILDDIR = flit_core-${VERSION}
PYTHONDIR = /usr/lib/python3.14/site-packages

prepare:

custom-build:
	cd ${BUILDDIR} && unshare -n python3 -m flit_core.wheel
	cd ${BUILDDIR} && python3 bootstrap_install.py --installdir \
		$(PWD)/pkg${PYTHONDIR} dist/flit_core-*.whl

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
