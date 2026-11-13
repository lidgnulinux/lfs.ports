COMMENT = Graph Visualization Tools
VERSION = 12.2.1
REVISION = 0
CATEGORIES = tool
PKGNAME = graphviz
HOMEPAGE = https://www.graphviz.org/
ARCHIVE = graphviz-12.2.1.tar.xz
LINK = https://gitlab.com/api/v4/projects/4207231/packages/generic/graphviz-releases/12.2.1/graphviz-12.2.1.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = graphviz-12.2.1
AUTO_CONF = (cd ${BUILDDIR} && LIBPOSTFIX=/ \
	LUA=lua5.5 lua_suffix=5.5 ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--disable-python \
	--disable-silent-rules \
	--disable-static \
	--disable-dependency-tracking \
	--disable-ltdl-install \
	--enable-sharp=no \
	--enable-go=no \
	--enable-guile=no \
	--enable-java=no \
	--enable-lua=yes \
	--enable-ocaml=no \
	--enable-perl=no \
	--enable-php=no \
	--enable-python3 \
	--enable-r=no \
	--enable-ruby=no \
	--enable-tcl=no \
	--without-included-ltdl \
	--with-gdk-pixbuf=no \
	--with-jpeg \
	--with-pangocairo=yes \
	--with-rsvg=yes \
	--with-x)
MAKEOPT =

prepare:

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
