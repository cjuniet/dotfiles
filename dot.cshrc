# $FreeBSD: release/9.1.0/share/skel/dot.cshrc 242850 2012-11-10 06:05:04Z eadler $

alias grep	grep --color=auto
alias ls	ls -CFG
alias ll	ls -lA

umask 22

set path = (/sbin /bin /usr/sbin /usr/bin /usr/local/sbin /usr/local/bin $HOME/local/bin)

setenv	BLOCKSIZE	K
setenv	EDITOR		vi
setenv	LESS		-rS
setenv	PACKAGEROOT	ftp://ftp.fr.freebsd.org
setenv	PAGER		less
setenv	VISUAL		vim

if ($?prompt) then
	set autoexpand
	set autolist = ambiguous
	set filec
	set prompt = '%{\033[31;40m%}%m:%~%#%{\033[0m%} '
	set history = 1000
	set savehist = (1000 merge)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif
endif
