COMMENT = The OpenSSH suite.
VERSION = 10.5p1
REVISION = 0
CATEGORIES = net
PKGNAME = openssh
HOMEPAGE = https://www.openssh.com
ARCHIVE = openssh-${VERSION}.tar.gz
LINK = https://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-${VERSION}.tar.gz
SRCCD = archive
BUILD = make
BUILDDIR = openssh-${VERSION}
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--with-default-path=/usr/bin \
	--with-superuser-path=/usr/sbin:/usr/bin \
	--with-privsep-path=/var/lib/sshd \
	--with-pid-dir=/run)
MAKEOPT =

prepare:

post_build:
	mkdir -p "package/var/run/sshd" "package/var/lib/sshd"
	cp -p ${BUILDDIR}/contrib/ssh-copy-id "package/usr/bin"
	chmod 755 "package/usr/bin/ssh-copy-id"

post-install:
	@echo -e "\n\
		if you face error about /var/lib/sshd ownership, \n\
		you may need to change the ownership to root. \n\
		You could use 'chown root:root /var/lib/sshd' command. \n"

include /usr/share/mk/lfs.port.mk
