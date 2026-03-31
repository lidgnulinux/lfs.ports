COMMENT = High-level scripting language
VERSION = 3.14.3
REVISION = 0
CATEGORIES = lang
PKGNAME = python3
HOMEPAGE = https://www.python.org/
ARCHIVE = Python-3.14.3.tar.xz
LINK = https://www.python.org/ftp/python/3.14.3/Python-3.14.3.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = Python-3.14.3
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
  --enable-shared \
  --with-system-expat \
  --enable-optimizations \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done

post_build:
	install -Dm644 $(PWD)/externally-managed \
		package/usr/lib/python$_basever/EXTERNALLY-MANAGED
	ln -s python3 package/usr/bin/python
	ln -s python3-config package/usr/bin/python-config

post-install:

include /usr/share/mk/lfs.port.mk
