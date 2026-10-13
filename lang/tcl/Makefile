COMMENT = The Tcl scripting language
VERSION = 8.6.18
_MAJOR = 8.6
REVISION = 0
CATEGORIES = lang
PKGNAME = tcl
HOMEPAGE = https://www.tcl-lang.org/
ARCHIVE = tcl${VERSION}-src.tar.gz
LINK = https://downloads.sourceforge.net/sourceforge/tcl/tcl${VERSION}-src.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = tcl${VERSION}/unix
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--localstatedir=/var \
	--with-system-sqlite \
	--enable-64bit \
	--build=x86_64-pc-linux-musl)
MAKEOPT = INSTALL_ROOT="$(CURDIR)/package"

prepare:
	rm -r ${BUILDDIR}/../pkgs/sqlite3*

post_build:
	ln -sf tclsh${_MAJOR} package/usr/bin/tclsh
	install -Dm644 ${BUILDDIR}/../license.terms \
		package/usr/share/licenses/tcl/LICENSE
	find package -name '*Config.sh' -print0 | \
		xargs -0 sed -i -e "s#$(CURDIR)#/sources#"

post-install:

include /usr/share/mk/lfs.port.mk
