COMMENT = Network security services.
VERSION = 3.125
_VERSION = 3_125
REVISION = 0
CATEGORIES = net
PKGNAME = nss
HOMEPAGE = https://developer.mozilla.org/en-US/docs/Mozilla/Projects/NSS
ARCHIVE = nss-3.125.tar.gz
LINK = https://archive.mozilla.org/pub/security/nss/releases/NSS_3_125_RTM/src/${ARCHIVE}
SRCCD = archive
BUILD = make
BUILDDIR = nss-${VERSION}/nss
MKINST = no
MAKEOPT = BUILD_OPT=1 \
	NSS_DISABLE_GTESTS=1 \
	NSPR_INCLUDE_DIR=/usr/include/nspr \
	USE_SYSTEM_ZLIB=1 \
	ZLIB_LIBS=-lz \
	NSS_ENABLE_WERROR=0 \
	NSS_USE_SYSTEM_SQLITE=1 \
	USE_64=1

prepare:
	patch -Np2 -d ${BUILDDIR} -i $(PWD)/nss-standalone-1.patch 

post_build:
	mkdir -v -p "package/usr/lib" \
                "package/usr/include/nss" \
                "package/usr/bin" \
                "package/usr/lib/pkgconfig"

	install -v -m755 ${BUILDDIR}/../dist/Linux*/lib/*.so package/usr/lib 
	install -v -m644 ${BUILDDIR}/../dist/Linux*/lib/*.chk package/usr/lib
	install -v -m755 -d package/usr/include/nss
	cp -v -RL ${BUILDDIR}/../dist/{public,private}/nss/* package/usr/include/nss 
	install -v -m755 ${BUILDDIR}/../dist/Linux*/bin/{certutil,nss-config,pk12util} package/usr/bin
	install -v -m644 ${BUILDDIR}/../dist/Linux*/lib/pkgconfig/nss.pc package/usr/lib/pkgconfig

post-install:

include /usr/share/mk/lfs.port.mk
