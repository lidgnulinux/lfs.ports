COMMENT = General-purpose build system modelled after Scons
VERSION = 2.1.9
REVISION = 0
CATEGORIES = tool
PKGNAME = waf
HOMEPAGE = http://waf.io/
SRCCD = archive
ARCHIVE = waf-waf-${VERSION}.tar.gz
LINK = https://gitlab.com/ita1024/waf/-/archive/waf-2.1.9/${ARCHIVE}
BUILD = custom
BUILDDIR = waf-waf-${VERSION}
AUTO_CONF =
MKINST = no 
MAKEOPT =

prepare:

custom-build:
	cd ${BUILDDIR}; ./waf-light configure --prefix=/usr build --make-waf

post_build:
	install -vDm 755 ${BUILDDIR}/waf -t pkg/usr/bin
	install -vDm 644 ${BUILDDIR}/wscript -t pkg/usr/share/waf/
	install -vDm 644 ${BUILDDIR}/waflib/*.py \
		-t pkg/usr/lib/python3.14/site-packages/waf/waflib/

	install -vDm 644 ${BUILDDIR}/waflib/Tools/*.py \
		-t pkg/usr/lib/python3.14/site-packages/waf/waflib/Tools/

	install -vDm 644 ${BUILDDIR}/waflib/extras/*.py \
		-t pkg/usr/lib/python3.14/site-packages/waf/waflib/extras/

	python3 -m compileall -d "/usr/lib/python3.14" pkg/usr/lib/python3.14/
	python3 -O -m compileall -d "/usr/lib/python3.14" pkg/usr/lib/python3.14/

post-install:

include /usr/share/mk/lfs.port.mk
