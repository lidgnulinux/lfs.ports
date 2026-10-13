COMMENT = a tiling window manager for Wayland modeled after StumpWM 
VERSION = 0.1.ca59a2001
REVISION = 0
CATEGORIES = wayland
PKGNAME = mahogany
HOMEPAGE = https://github.com/stumpwm/mahogany
SRCCD = git
BUILD = make
BUILDDIR = mahogany
MKINST = no
STRIP = no

prepare:
	git -C mahogany submodule update --init

	curl -O https://beta.quicklisp.org/quicklisp.lisp

	sbcl --noinform --load $(CURDIR)/quicklisp.lisp --eval \
		"(quicklisp-quickstart:install)"

	sbcl --noinform --load "${HOME}/quicklisp/setup.lisp" \
		--eval "(progn (setf ql-util::*do-not-prompt* t)(ql:add-to-init-file))"

	chmod +x ${BUILDDIR}/scripts/install-dependencies.lisp
	cd ${BUILDDIR}; yes | ./scripts/install-dependencies.lisp

post_build:
	mkdir -p package/usr/bin
	cp -r ${BUILDDIR}/build/${PKGNAME} package/usr/bin
	install ${BUILDDIR}/build/heart/libheart.so -vDm755 -t package/usr/lib

post-install:

include /usr/share/mk/lfs.port.mk
