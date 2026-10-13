COMMENT = text-based web & gopher browser, as well as pager
VERSION = 0.5.3_git20250513
_REV = a80300d5e7fba3e2f3b63b220b8fa431b9629741 
REVISION = 0
CATEGORIES = net
PKGNAME = w3m
HOMEPAGE = https://sr.ht/~rkta/w3m/
ARCHIVE = a80300d5e7fba3e2f3b63b220b8fa431b9629741.tar.gz
LINK = https://git.sr.ht/~rkta/w3m/archive/a80300d5e7fba3e2f3b63b220b8fa431b9629741.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = w3m-${_REV}
AUTO_CONF = (cd ${BUILDDIR} && PERL=/usr/bin/perl ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--libexecdir=/usr/lib \
	--enable-image=fb \
	--with-ssl \
	--disable-nntp \
	--disable-dict \
	--disable-help-cgi \
	--enable-mouse \
	--with-imagelib=imlib2 \
	--with-termlib=ncurses \
	--with-editor="/usr/bin/vi" \
	--with-browser="/usr/bin/xdg-open" \
	--disable-w3mmailer \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:

post_build:
	make -C ${BUILDDIR} PREFIX=/usr DESTDIR="$(CURDIR)/package" \
		HELP_ALLFILES="w3mhelp-w3m_en.html w3mhelp-w3m_ja.html" \
		install-helpfile

	rm package/usr/lib/w3m/xface2xpm
	rm package/usr/lib/w3m/cgi-bin/w3mdict.cgi
	rm package/usr/lib/w3m/cgi-bin/multipart.cgi
	rm package/usr/lib/w3m/cgi-bin/w3mmail.cgi

post-install:

include /usr/share/mk/lfs.port.mk
