COMMENT = Very advanced and programmable command interpreter (shell)
VERSION = 5.9
REVISION = 0
CATEGORIES = shell
PKGNAME = zsh
HOMEPAGE = https://www.zsh.org/
ARCHIVE = zsh-5.9.tar.xz
LINK = https://sourceforge.net/projects/zsh/files/zsh/5.9/zsh-5.9.tar.xz
SRCCD = archive
BUILD = make
BUILDDIR = zsh-5.9
AUTO_CONF = (cd ${BUILDDIR} && ./configure \
	--prefix=/usr \
	--sysconfdir=/etc \
	--libdir=/usr/lib \
	--bindir=/bin \
	--enable-etcdir=/etc/zsh \
	--enable-pcre \
	--enable-cap \
	--enable-multibyte \
	--enable-function-subdirs \
	--enable-fndir=/usr/share/zsh/functions \
	--enable-zsh-secure-free \
	--sysconfdir=/etc \
	--with-tcsetpgrp \
	--mandir=/usr/share/man \
	--infodir=/usr/share/info \
	--build=x86_64-pc-linux-musl)
MAKEOPT =

prepare:
	for i in patch/*; do patch -p1 -d ${BUILDDIR} -i $(PWD)/$$i; done
	cd ${BUILDDIR}/Completion/Unix/Command && rm -f _aap _apm \
		_baz _bittorrent _bpython _ccal _cdcd _chkconfig _clay \
		_cowsay _cplay _cssh _darcs _devtodo _dict _dsh _elfdump _elm \
		_enscript _finger _flasher _fsh _gnupod _guilt _initctl _lzop \
		_mencal _module _monotone _moosic _mysqldiff _nkf \
		_pack _pax _perforce _pine _pkgadd _pkginfo _pkgrm _prcs \
		_quilt _raggle _rcs _rlogin _rubber _sablotron _sisu _socket \
		_stgit _surfraw _tardy _telnet _tin _tla _topgit _totd _twidge \
		_unace _unison _units _uzbl _vcsh _vux _wiggle _xmms2

	cd ${BUILDDIR}/Completion/Linux/Command && rm -f \
		_acpitool _mondo _tpb _tpconfig _uml _vserver

	cd ${BUILDDIR}/Completion/X/Command && rm -f \
		_acroread _dcop _gnome-gv _gqview _gv _kfmclient _matlab \
		_nautilus _netscape _okular _qiv _vnc _xfig _xloadimage \
		_xournal _xv _xwit

	cd ${BUILDDIR}/Completion && rm -Rf AIX BSD Cygwin Darwin \
		Debian Mandriva Redhat Solaris openSUSE

post_build:

post-install:

include /usr/share/mk/lfs.port.mk
