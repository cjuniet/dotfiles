# $FreeBSD: src/share/skel/dot.cshrc,v 1.14.16.2 2012/05/03 19:55:36 eadler Exp $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
# more examples available at /usr/share/examples/csh/
#

alias c++11	c++ -std=c++11 -stdlib=libc++
alias grep	grep --color=auto
alias ls	ls -CFG
alias ll	ls -lA

# A righteous umask
umask 22

set path = (/sbin /bin /usr/sbin /usr/bin /usr/local/sbin /usr/local/bin $HOME/local/bin)

setenv	BLOCKSIZE	K
setenv	EDITOR		vi
setenv	LD_LIBRARY_PATH	$HOME/local/lib
setenv	LESS		-rS
setenv	PACKAGEROOT	ftp://ftp.fr.freebsd.org
setenv	PAGER		less
setenv	SCALA_HOME	/usr/local/share/scala
setenv	SHELL		/bin/tcsh
setenv	VISUAL		vim

if ($?prompt) then
	# An interactive shell -- set some stuff up
	if ($uid == 0) then
		set user = root
	endif
	set prompt = '%{\033[31;40m%}%m:%~%#%{\033[0m%} '

	set filec
	set history = 1000
	set savehist = (1000 merge)
	set autolist = ambiguous
	# Use history to aid expansion
	set autoexpand
	set autorehash
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif
endif
