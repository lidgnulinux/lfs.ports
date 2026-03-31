COMMENT = Utility to detect other OSes on a set of drives
VERSION = 1.84
REVISION = 1
CATEGORIES = sys
PKGNAME = os_prober
HOMEPAGE = https://joeyh.name/code/os-prober/
ARCHIVE = os-prober_1.84.tar.xz
LINK = https://deb.debian.org/debian/pool/main/o/os-prober/os-prober_1.84.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = os-prober-1.84
MAKEOPT = newns
MKINST = no

prepare:

post_build:
	install -Dm755 ${BUILDDIR}/os-prober \
		${BUILDDIR}/linux-boot-prober -t package/usr/bin
	install -Dm755 ${BUILDDIR}/newns \
		package/usr/lib/os-prober/newns
	install -Dm755 ${BUILDDIR}/common.sh \
		package/usr/share/os-prober/common.sh

	for i in os-probes os-probes/mounted os-probes/init \
		linux-boot-probes linux-boot-probes/mounted; do \
		install -Dm755 -t package/usr/lib/$$i ${BUILDDIR}/$$i/common/*; \
		if [ -d ${BUILDDIR}/$$i/x86 ]; then \
			cp -r ${BUILDDIR}/$$i/x86/* package/usr/lib/$$i; \
		fi; \
	done

	install -dm755 package/var/lib/os-prober

post-install:

include /usr/share/mk/lfs.port.mk
