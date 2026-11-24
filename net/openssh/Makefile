COMMENT = The OpenSSH suite.
VERSION = 10.6p1
REVISION = 2
CATEGORIES = net
PKGNAME = openssh
HOMEPAGE = https://www.openssh.com
ARCHIVE = openssh-${VERSION}.tar.gz
LINK = https://ftp.openbsd.org/pub/OpenBSD/OpenSSH/portable/${ARCHIVE}
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
	--with-pam \
	--with-pid-dir=/run)
MAKEOPT =

prepare:

post_build:
	mkdir -p "package/var/run/sshd" "package/var/lib/sshd"
	cp -p ${BUILDDIR}/contrib/ssh-copy-id "package/usr/bin"
	chmod 755 "package/usr/bin/ssh-copy-id"

	@echo "Install services & pam stuff."
	install -Dm644 files/sshdgenkeys.service \
		-t package/usr/lib/systemd/system/
	install -Dm644 files/sshd.service \
		-t package/usr/lib/systemd/system/
	install -Dm644 files/sshd@.service \
		-t package/usr/lib/systemd/system/
	install -Dm644 files/ssh-agent.{service,socket} \
		-t package/usr/lib/systemd/user/
	install -Dm644 files/sshd.pam package/etc/pam.d/sshd

post-install:

include /usr/share/mk/lfs.port.mk
