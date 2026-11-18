COMMENT = Device mapper and Logical Volume Manager
VERSION = 2.03.44
REVISION = 0
CATEGORIES = tool
PKGNAME = lvm2
HOMEPAGE = https://sourceware.org/lvm2/
ARCHIVE = LVM2.${VERSION}.tgz
LINK = https://ftp2.osuosl.org/pub/blfs/development/l/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = LVM2.${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--sbindir=/sbin \
	--localstatedir=/var \
	--disable-dependency-tracking \
	--disable-nls \
	--disable-readline \
	--enable-pkgconfig \
	--with-thin=internal \
	--enable-dmeventd \
	--enable-cmdlib \
	--with-thin-check=/usr/sbin/thin_check \
	--disable-thin_check_needs_check \
	--with-thin-dump=/usr/sbin/thin_dump \
	--with-thin-repair=/usr/sbin/thin_repair \
	--with-thin-restore=/usr/sbin/thin_restore \
	--with-cache-check=/usr/sbin/cache_check \
	--disable-cache_check_needs_check \
	--with-cache-dump=/usr/sbin/cache_dump \
	--with-cache-repair=/usr/sbin/cache_repair \
	--with-cache-restore=/usr/sbin/cache_restore \
	--with-dmeventd-path=/sbin/dmeventd \
	--enable-udev_rules \
	--enable-write_install \
	--disable-lvmlockd-sanlock)

MAKEOPT =
MKINST = NO

prepare:

post_build:
	make -C ${BUILDDIR} PREFIX=/usr DESTDIR=$(CURDIR)/package install_lvm2
	install -Dm755 ${BUILDDIR}/scripts/blkdeactivate.sh \
		$(CURDIR)/package/sbin/blkdeactivate
	install -d $(CURDIR)/etc/lvm/archive $(CURDIR)/package/etc/lvm/backup

post-install:

include /usr/share/mk/lfs.port.mk
